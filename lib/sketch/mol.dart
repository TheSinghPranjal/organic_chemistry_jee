import 'dart:math' as math;

import 'package:flutter/material.dart';

import '../theme/ink.dart';

class MAtom {
  const MAtom(
    this.id,
    this.x,
    this.y, {
    this.label = '',
    this.charge,
    this.radical = false,
  });

  final String id;
  final double x;
  final double y;
  final String label;
  final String? charge;
  final bool radical;

  Offset get offset => Offset(x, y);
}

enum BondStyle {
  /// Ordinary line. [MBond.order] draws a double or triple.
  plain,

  /// Solid wedge. Narrow at [MBond.a], wide at [MBond.b]: the bond comes
  /// toward the viewer.
  wedge,

  /// Hashed wedge. Narrow at [MBond.a], wide at [MBond.b]: the bond goes
  /// away from the viewer.
  hash,
}

class MBond {
  const MBond(this.a, this.b, {this.order = 1, this.style = BondStyle.plain});

  final String a;
  final String b;

  /// 1 single, 2 double, 3 triple. Ignored unless [style] is [BondStyle.plain].
  final int order;
  final BondStyle style;
}

/// One substituent on a Newman projection.
///
/// [hours] is a clock position: 0 is straight up, and the value increases
/// clockwise. 6 is straight down.
class NewmanArm {
  const NewmanArm(this.hours, this.label);

  final double hours;
  final String label;
}

class Newman {
  const Newman({
    required this.center,
    required this.front,
    required this.back,
    this.radius = 28,
  });

  final Offset center;
  final double radius;

  /// Substituents on the front carbon. Bonds start at [center].
  final List<NewmanArm> front;

  /// Substituents on the rear carbon. Bonds start at the circle.
  final List<NewmanArm> back;
}

class SawhorseArm {
  const SawhorseArm(this.tip, this.label);

  final Offset tip;
  final String label;
}

class Sawhorse {
  const Sawhorse({
    required this.front,
    required this.back,
    required this.frontArms,
    required this.backArms,
  });

  final Offset front;
  final Offset back;
  final List<SawhorseArm> frontArms;
  final List<SawhorseArm> backArms;
}

class MNote {
  const MNote(this.x, this.y, this.text);

  final double x;
  final double y;
  final String text;
}

class RingMark {
  const RingMark(this.center, this.radius);

  final Offset center;
  final double radius;
}

class MolSketch {
  const MolSketch({
    required this.name,
    required this.atoms,
    required this.bonds,
    this.notes = const [],
    this.rings = const [],
    this.newman,
    this.sawhorse,
    required this.width,
    required this.height,
  });

  final String name;
  final List<MAtom> atoms;
  final List<MBond> bonds;
  final List<MNote> notes;
  final List<RingMark> rings;
  final Newman? newman;
  final Sawhorse? sawhorse;
  final double width;
  final double height;
}

class MoleculeView extends StatelessWidget {
  const MoleculeView({super.key, required this.sketch});

  final MolSketch sketch;

  @override
  Widget build(BuildContext context) {
    return Semantics(
      label: sketch.name,
      child: FittedBox(
        fit: BoxFit.scaleDown,
        alignment: Alignment.center,
        child: CustomPaint(
          size: Size(sketch.width, sketch.height),
          painter: MolPainter(sketch),
        ),
      ),
    );
  }
}

class MolPainter extends CustomPainter {
  MolPainter(this.sketch);

  final MolSketch sketch;

  @override
  void paint(Canvas canvas, Size size) {
    final atoms = {for (final atom in sketch.atoms) atom.id: atom};
    final pen = Paint()
      ..color = InkColors.blue
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1.8
      ..strokeCap = StrokeCap.round
      ..strokeJoin = StrokeJoin.round;

    final saw = sketch.sawhorse;
    if (saw != null) {
      _drawSawhorse(canvas, saw, pen);
    }
    final newman = sketch.newman;
    if (newman != null) {
      _drawNewman(canvas, newman, pen);
    }

    for (final bond in sketch.bonds) {
      final a = atoms[bond.a];
      final b = atoms[bond.b];
      if (a == null || b == null) continue;
      final start = _inset(a.offset, b.offset, _trim(a));
      final end = _inset(b.offset, a.offset, _trim(b));
      _drawBond(
        canvas,
        start,
        end,
        bond,
        pen,
        inkSeed(sketch.name + bond.a + bond.b),
      );
    }

    for (final ring in sketch.rings) {
      canvas.drawPath(
        inkOval(ring.center, ring.radius, ring.radius, inkSeed(sketch.name)),
        pen,
      );
    }

    for (final atom in sketch.atoms) {
      _drawLabel(canvas, atom);
    }
    for (final note in sketch.notes) {
      _drawNote(canvas, note);
    }
  }

  double _trim(MAtom atom) {
    if (atom.label.isEmpty && atom.charge == null && !atom.radical) return 0;
    if (atom.label.isEmpty) return 12;
    return 11 + atom.label.length * 3.6;
  }

  Offset _inset(Offset end, Offset other, double trim) {
    final delta = other - end;
    final len = delta.distance;
    if (len < 0.1 || trim <= 0) return end;
    final t = math.min(trim, len - 1) / len;
    return end + delta * t;
  }

  void _drawBond(Canvas canvas, Offset start, Offset end, MBond bond, Paint pen, int seed) {
    final delta = end - start;
    final len = delta.distance;
    if (len < 1) return;
    if (bond.style == BondStyle.wedge) {
      _drawWedge(canvas, start, end, pen, seed);
      return;
    }
    if (bond.style == BondStyle.hash) {
      _drawHash(canvas, start, end, pen, seed);
      return;
    }
    final normal = Offset(-delta.dy / len, delta.dx / len);
    final order = bond.order;
    if (order == 1) {
      canvas.drawPath(inkLine(start, end, seed), pen);
      return;
    }
    if (order == 2) {
      const gap = 3.3;
      canvas.drawPath(inkLine(start + normal * gap, end + normal * gap, seed), pen);
      canvas.drawPath(inkLine(start - normal * gap, end - normal * gap, seed + 3), pen);
      return;
    }
    const gap = 4.2;
    canvas.drawPath(inkLine(start, end, seed), pen);
    canvas.drawPath(inkLine(start + normal * gap, end + normal * gap, seed + 1), pen);
    canvas.drawPath(inkLine(start - normal * gap, end - normal * gap, seed + 2), pen);
  }

  void _drawWedge(Canvas canvas, Offset start, Offset end, Paint pen, int seed) {
    final delta = end - start;
    final len = delta.distance;
    if (len < 1) return;
    final normal = Offset(-delta.dy / len, delta.dx / len);
    const half = 8.0;
    final left = end + normal * half;
    final right = end - normal * half;
    final clip = Path()
      ..moveTo(start.dx, start.dy)
      ..lineTo(left.dx, left.dy)
      ..lineTo(right.dx, right.dy)
      ..close();
    paintHatch(canvas, clip, clip.getBounds().inflate(2), const Color(0xFF9EBEF0));
    canvas.drawPath(inkLine(start, left, seed, amplitude: 0.55), pen);
    canvas.drawPath(inkLine(start, right, seed + 1, amplitude: 0.55), pen);
    canvas.drawPath(inkLine(left, right, seed + 2, amplitude: 0.4), pen);
  }

  void _drawHash(Canvas canvas, Offset start, Offset end, Paint pen, int seed) {
    final delta = end - start;
    final len = delta.distance;
    if (len < 1) return;
    final dir = delta / len;
    final normal = Offset(-dir.dy, dir.dx);
    const ticks = 5;
    for (var i = 0; i < ticks; i++) {
      final t = (i + 0.55) / (ticks + 0.15);
      final mid = start + delta * t;
      final half = 3.6 + 6.2 * t;
      canvas.drawPath(
        inkLine(mid - normal * half, mid + normal * half, seed + i, amplitude: 0.3),
        pen,
      );
    }
  }

  Offset _clock(double hours) {
    final t = hours / 12.0 * math.pi * 2;
    return Offset(math.sin(t), -math.cos(t));
  }

  void _drawNewman(Canvas canvas, Newman newman, Paint pen) {
    final center = newman.center;
    canvas.drawPath(
      inkOval(center, newman.radius, newman.radius, inkSeed('${sketch.name}-newman')),
      pen,
    );
    canvas.drawCircle(center, 3.4, Paint()..color = InkColors.blue);
    for (final arm in newman.front) {
      _drawNewmanArm(canvas, newman, arm, pen, fromRim: false);
    }
    for (final arm in newman.back) {
      _drawNewmanArm(canvas, newman, arm, pen, fromRim: true);
    }
  }

  void _drawNewmanArm(
    Canvas canvas,
    Newman newman,
    NewmanArm arm,
    Paint pen, {
    required bool fromRim,
  }) {
    final dir = _clock(arm.hours);
    final center = newman.center;
    final inner = fromRim ? newman.radius + 1.5 : 0.0;
    final outer = newman.radius + (fromRim ? 34 : 26);
    final labelAt = newman.radius + (fromRim ? 62 : 44);
    canvas.drawPath(
      inkLine(center + dir * inner, center + dir * outer, inkSeed('${sketch.name}-${arm.hours}-$fromRim')),
      pen,
    );
    final at = center + dir * labelAt;
    _drawNote(canvas, MNote(at.dx, at.dy, arm.label));
  }

  void _drawSawhorse(Canvas canvas, Sawhorse saw, Paint pen) {
    final axis = Paint()
      ..color = InkColors.blue
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2.7
      ..strokeCap = StrokeCap.round;
    canvas.drawPath(inkLine(saw.front, saw.back, inkSeed('${sketch.name}-axis'), amplitude: 0.7), axis);
    final dot = Paint()..color = InkColors.blue;
    canvas.drawCircle(saw.front, 3.5, dot);
    canvas.drawCircle(saw.back, 3.5, dot);
    for (final arm in saw.frontArms) {
      _drawSawArm(canvas, saw.front, arm, pen, 'f');
    }
    for (final arm in saw.backArms) {
      _drawSawArm(canvas, saw.back, arm, pen, 'b');
    }
  }

  void _drawSawArm(Canvas canvas, Offset carbon, SawhorseArm arm, Paint pen, String side) {
    final end = _inset(arm.tip, carbon, 12);
    canvas.drawPath(
      inkLine(carbon, end, inkSeed('${sketch.name}-$side-${arm.label}-${arm.tip.dx}')),
      pen,
    );
    _drawNote(canvas, MNote(arm.tip.dx, arm.tip.dy, arm.label));
  }

  void _drawLabel(Canvas canvas, MAtom atom) {
    if (atom.label.isEmpty && atom.charge == null && !atom.radical) return;
    final painter = TextPainter(
      text: TextSpan(text: atom.label, style: InkText.body.copyWith(fontSize: 18, color: InkColors.blue)),
      textDirection: TextDirection.ltr,
    )..layout();

    var width = painter.width;
    const chargeWidth = 14.0;
    if (atom.charge != null) width += chargeWidth;
    if (atom.radical) width += 10;
    final height = math.max(painter.height, 18.0);
    final rect = Rect.fromCenter(
      center: atom.offset,
      width: math.max(width + 6, 12),
      height: height + 2,
    );
    canvas.drawRRect(
      RRect.fromRectAndRadius(rect, const Radius.circular(4)),
      Paint()..color = const Color(0xF5FFFFFF),
    );
    painter.paint(canvas, Offset(rect.left + 3, rect.center.dy - painter.height / 2));

    var cursor = rect.left + 3 + painter.width;
    if (atom.charge != null) {
      final charge = TextPainter(
        text: TextSpan(
          text: atom.charge,
          style: InkText.body.copyWith(fontSize: 16, color: InkColors.red),
        ),
        textDirection: TextDirection.ltr,
      )..layout();
      charge.paint(canvas, Offset(cursor, rect.top - 1));
      cursor += charge.width;
    }
    if (atom.radical) {
      canvas.drawCircle(Offset(cursor + 6, rect.top + 8), 2.4, Paint()..color = InkColors.red);
    }
  }

  void _drawNote(Canvas canvas, MNote note) {
    final painter = TextPainter(
      text: TextSpan(
        text: note.text,
        style: InkText.body.copyWith(fontSize: 18, color: InkColors.blue),
      ),
      textDirection: TextDirection.ltr,
    )..layout();
    final origin = Offset(note.x - painter.width / 2, note.y - painter.height / 2);
    canvas.drawRRect(
      RRect.fromRectAndRadius(origin & painter.size, const Radius.circular(4)).inflate(2),
      Paint()..color = const Color(0xF5FFFFFF),
    );
    painter.paint(canvas, origin);
  }

  @override
  bool shouldRepaint(covariant MolPainter oldDelegate) => oldDelegate.sketch != sketch;
}
