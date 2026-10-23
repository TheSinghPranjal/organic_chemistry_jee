import 'dart:math' as math;

import 'package:flutter/material.dart';

/// Ballpoint, pencil, and paper colours for the notebook.
class InkColors {
  static const paper = Color(0xFFFFFFFF);
  static const grid = Color(0xFFD5E4F7);
  static const gridStrong = Color(0xFFB9D2F0);
  static const blue = Color(0xFF1E4BB0);
  static const ink = Color(0xFF1A2E57);
  static const red = Color(0xFFE06B5C);
  static const yellow = Color(0xFFF2CB4E);
  static const green = Color(0xFF7EBE74);
  static const brown = Color(0xFFB5835A);
  static const white = Color(0xFFFFFFFF);
}

class InkText {
  static const body = TextStyle(
    fontFamily: 'PatrickHand',
    fontSize: 20,
    height: 1.35,
    color: InkColors.ink,
  );

  static const title = TextStyle(
    fontFamily: 'Kalam',
    fontWeight: FontWeight.w700,
    fontSize: 28,
    height: 1.15,
    color: InkColors.blue,
  );

  static const heading = TextStyle(
    fontFamily: 'Kalam',
    fontWeight: FontWeight.w700,
    fontSize: 22,
    height: 1.2,
    color: InkColors.blue,
  );
}

int inkSeed(Object value) =>
    value.hashCode & 0x7fffffff;

Path inkLine(Offset a, Offset b, int seed, {double amplitude = 1.15}) {
  final path = Path()..moveTo(a.dx, a.dy);
  final dx = b.dx - a.dx;
  final dy = b.dy - a.dy;
  final len = math.sqrt(dx * dx + dy * dy);
  if (len < 1) {
    path.lineTo(b.dx, b.dy);
    return path;
  }
  final px = -dy / len;
  final py = dx / len;
  const steps = 8;
  for (var i = 1; i <= steps; i++) {
    final t = i / steps;
    final envelope = i == steps ? 0.0 : math.sin(t * math.pi);
    final j = math.sin(seed * 0.17 + i * 2.2) * amplitude * envelope;
    path.lineTo(a.dx + dx * t + px * j, a.dy + dy * t + py * j);
  }
  return path;
}

Path inkOval(Offset center, double rx, double ry, int seed) {
  final path = Path();
  const steps = 28;
  for (var i = 0; i <= steps; i++) {
    final t = i / steps * math.pi * 2;
    final wobble = math.sin(t * 3 + seed * 0.2) * 1.15 +
        math.sin(t * 7 + seed * 0.05) * 0.45;
    final p = Offset(
      center.dx + (rx + wobble) * math.cos(t),
      center.dy + (ry + wobble * 0.8) * math.sin(t),
    );
    if (i == 0) {
      path.moveTo(p.dx, p.dy);
    } else {
      path.lineTo(p.dx, p.dy);
    }
  }
  path.close();
  return path;
}

Path inkRoundRect(Rect rect, double radius, int seed) {
  final path = Path();
  final r = math.min(radius, math.min(rect.width, rect.height) / 2);
  final samples = <Offset>[];
  void corner(Offset c, double start, double sweep) {
    const n = 5;
    for (var i = 0; i <= n; i++) {
      final t = start + sweep * (i / n);
      samples.add(Offset(c.dx + r * math.cos(t), c.dy + r * math.sin(t)));
    }
  }

  corner(Offset(rect.right - r, rect.top + r), -math.pi / 2, math.pi / 2);
  corner(Offset(rect.right - r, rect.bottom - r), 0, math.pi / 2);
  corner(Offset(rect.left + r, rect.bottom - r), math.pi / 2, math.pi / 2);
  corner(Offset(rect.left + r, rect.top + r), math.pi, math.pi / 2);

  for (var i = 0; i < samples.length; i++) {
    final p = samples[i];
    final n = _outward(rect, p);
    final j = math.sin(seed * 0.13 + i * 1.7) * 0.9;
    final q = p + n * j;
    if (i == 0) {
      path.moveTo(q.dx, q.dy);
    } else {
      path.lineTo(q.dx, q.dy);
    }
  }
  path.close();
  return path;
}

Offset _outward(Rect rect, Offset p) {
  final c = rect.center;
  final d = p - c;
  final len = d.distance;
  if (len < 0.1) return const Offset(0, -1);
  return d / len;
}

void paintHatch(Canvas canvas, Path clip, Rect bounds, Color color) {
  canvas.save();
  canvas.clipPath(clip);
  final paint = Paint()
    ..color = color.withValues(alpha: 0.55)
    ..strokeWidth = 1.35
    ..style = PaintingStyle.stroke
    ..strokeCap = StrokeCap.round;
  for (var d = -bounds.height; d < bounds.width + bounds.height; d += 5) {
    canvas.drawPath(
      inkLine(
        Offset(bounds.left + d, bounds.bottom),
        Offset(bounds.left + d + bounds.height, bounds.top),
        d.toInt(),
        amplitude: 0.7,
      ),
      paint,
    );
  }
  canvas.restore();
}

class GraphPaperPainter extends CustomPainter {
  const GraphPaperPainter();

  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawRect(
      Offset.zero & size,
      Paint()..color = InkColors.paper,
    );
    final minor = Paint()
      ..color = InkColors.grid
      ..strokeWidth = 0.8;
    final major = Paint()
      ..color = InkColors.gridStrong
      ..strokeWidth = 1.15;
    const gap = 18.0;
    for (var x = 0.0; x <= size.width; x += gap) {
      final strong = ((x / gap).round() % 4) == 0;
      canvas.drawLine(Offset(x, 0), Offset(x, size.height), strong ? major : minor);
    }
    for (var y = 0.0; y <= size.height; y += gap) {
      final strong = ((y / gap).round() % 4) == 0;
      canvas.drawLine(Offset(0, y), Offset(size.width, y), strong ? major : minor);
    }
  }

  @override
  bool shouldRepaint(covariant GraphPaperPainter oldDelegate) => false;
}
