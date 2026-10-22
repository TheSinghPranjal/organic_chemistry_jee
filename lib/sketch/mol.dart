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

class MBond {
  const MBond(this.a, this.b, {this.order = 1});

  final String a;
  final String b;

  /// 1 single, 2 double, 3 triple.
  final int order;
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
    required this.width,
    required this.height,
  });

  final String name;
  final List<MAtom> atoms;
  final List<MBond> bonds;
  final List<MNote> notes;
  final List<RingMark> rings;
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

    for (final bond in sketch.bonds) {
      final a = atoms[bond.a];
      final b = atoms[bond.b];
      if (a == null || b == null) continue;
      final start = _inset(a.offset, b.offset, _trim(a));
      final end = _inset(b.offset, a.offset, _trim(b));
      _drawBond(canvas, start, end, bond.order, pen, inkSeed(sketch.name + bond.a + bond.b));
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

  void _drawBond(Canvas canvas, Offset start, Offset end, int order, Paint pen, int seed) {
    final delta = end - start;
    final len = delta.distance;
    if (len < 1) return;
    final normal = Offset(-delta.dy / len, delta.dx / len);
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
