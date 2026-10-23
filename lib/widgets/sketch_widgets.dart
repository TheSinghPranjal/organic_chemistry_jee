import 'package:flutter/material.dart';

import '../theme/ink.dart';

class GraphPaper extends StatelessWidget {
  const GraphPaper({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomPaint(
      painter: GraphPaperPainter(),
      child: SizedBox.expand(),
    );
  }
}

class NotebookScaffold extends StatelessWidget {
  const NotebookScaffold({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: InkColors.paper,
      body: Stack(
        children: [
          const Positioned.fill(child: GraphPaper()),
          SafeArea(
            child: Align(
              alignment: Alignment.topCenter,
              child: ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 440),
                child: child,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class HatchCardPainter extends CustomPainter {
  HatchCardPainter({
    required this.seed,
    this.hatch,
    this.radius = 16,
    this.fill = true,
  });

  final int seed;
  final Color? hatch;
  final double radius;
  final bool fill;

  @override
  void paint(Canvas canvas, Size size) {
    final rect = Offset.zero & size;
    final path = inkRoundRect(rect.deflate(1.2), radius, seed);
    if (fill) {
      canvas.drawPath(path, Paint()..color = const Color(0xF7FFFFFF));
    }
    if (hatch != null) {
      paintHatch(canvas, path, rect, hatch!);
    }
    canvas.drawPath(
      path,
      Paint()
        ..color = InkColors.blue
        ..style = PaintingStyle.stroke
        ..strokeWidth = 1.7
        ..strokeJoin = StrokeJoin.round,
    );
  }

  @override
  bool shouldRepaint(covariant HatchCardPainter oldDelegate) {
    return oldDelegate.seed != seed || oldDelegate.hatch != hatch || oldDelegate.radius != radius;
  }
}

class SketchCard extends StatelessWidget {
  const SketchCard({
    super.key,
    required this.child,
    required this.seed,
    this.onTap,
    this.hatch,
    this.padding = const EdgeInsets.all(14),
    this.radius = 16,
  });

  final Widget child;
  final int seed;
  final VoidCallback? onTap;
  final Color? hatch;
  final EdgeInsets padding;
  final double radius;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: CustomPaint(
        painter: HatchCardPainter(seed: seed, hatch: hatch, radius: radius),
        child: Padding(padding: padding, child: child),
      ),
    );
  }
}

class HighlighterPill extends StatelessWidget {
  const HighlighterPill({
    super.key,
    required this.text,
    this.color = InkColors.yellow,
  });

  final String text;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return SketchCard(
      seed: inkSeed(text),
      hatch: color,
      radius: 22,
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
      child: Text(text, style: InkText.body.copyWith(fontSize: 18, height: 1.3)),
    );
  }
}

class SketchIconButton extends StatelessWidget {
  const SketchIconButton({
    super.key,
    required this.child,
    required this.onPressed,
    required this.tooltip,
    this.hatch,
    this.seed = 1,
  });

  final Widget child;
  final VoidCallback onPressed;
  final String tooltip;
  final Color? hatch;
  final int seed;

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: tooltip,
      child: Semantics(
        button: true,
        label: tooltip,
        child: GestureDetector(
          onTap: onPressed,
          child: CustomPaint(
            painter: _CirclePainter(seed: seed, hatch: hatch),
            child: SizedBox(width: 48, height: 48, child: Center(child: child)),
          ),
        ),
      ),
    );
  }
}

class _CirclePainter extends CustomPainter {
  _CirclePainter({required this.seed, this.hatch});

  final int seed;
  final Color? hatch;

  @override
  void paint(Canvas canvas, Size size) {
    final center = size.center(Offset.zero);
    final path = inkOval(center, size.width / 2 - 2, size.height / 2 - 2, seed);
    canvas.drawPath(path, Paint()..color = const Color(0xF7FFFFFF));
    if (hatch != null) paintHatch(canvas, path, Offset.zero & size, hatch!);
    canvas.drawPath(
      path,
      Paint()
        ..color = InkColors.blue
        ..style = PaintingStyle.stroke
        ..strokeWidth = 1.7,
    );
  }

  @override
  bool shouldRepaint(covariant _CirclePainter oldDelegate) => oldDelegate.hatch != hatch;
}

class SketchButton extends StatelessWidget {
  const SketchButton({
    super.key,
    required this.label,
    required this.onPressed,
    this.hatch = InkColors.yellow,
  });

  final String label;
  final VoidCallback? onPressed;
  final Color hatch;

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: onPressed == null ? 0.45 : 1,
      child: SketchCard(
        seed: inkSeed(label),
        hatch: hatch,
        radius: 24,
        onTap: onPressed,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        child: Center(
          child: Text(label, style: InkText.heading.copyWith(fontSize: 20)),
        ),
      ),
    );
  }
}

class BulbIcon extends StatelessWidget {
  const BulbIcon({super.key, required this.on});

  final bool on;

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: const Size(22, 26),
      painter: _BulbPainter(on: on),
    );
  }
}

class _BulbPainter extends CustomPainter {
  _BulbPainter({required this.on});

  final bool on;

  @override
  void paint(Canvas canvas, Size size) {
    final pen = Paint()
      ..color = InkColors.blue
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1.6
      ..strokeCap = StrokeCap.round;
    final glass = inkOval(Offset(size.width / 2, 10), 8, 9, 4);
    if (on) {
      paintHatch(canvas, glass, Offset.zero & size, InkColors.yellow);
    }
    canvas.drawPath(glass, pen);
    canvas.drawPath(inkLine(Offset(7, 18), Offset(15, 18), 2, amplitude: 0.4), pen);
    canvas.drawPath(inkLine(Offset(8, 21), Offset(14, 21), 3, amplitude: 0.4), pen);
    canvas.drawPath(inkLine(Offset(9, 21), Offset(11, 25), 5, amplitude: 0.3), pen);
    canvas.drawPath(inkLine(Offset(13, 21), Offset(11, 25), 6, amplitude: 0.3), pen);
    canvas.drawPath(inkLine(Offset(size.width / 2, 5), Offset(size.width / 2, 12), 8, amplitude: 0.6), pen);
  }

  @override
  bool shouldRepaint(covariant _BulbPainter oldDelegate) => oldDelegate.on != on;
}

class FlagIcon extends StatelessWidget {
  const FlagIcon({super.key, required this.on});

  final bool on;

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: const Size(20, 24),
      painter: _FlagPainter(on: on),
    );
  }
}

class _FlagPainter extends CustomPainter {
  _FlagPainter({required this.on});

  final bool on;

  @override
  void paint(Canvas canvas, Size size) {
    final pen = Paint()
      ..color = on ? InkColors.red : InkColors.blue
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1.6
      ..strokeCap = StrokeCap.round;
    canvas.drawPath(inkLine(const Offset(5, 2), const Offset(5, 22), 2, amplitude: 0.5), pen);
    final flag = Path()
      ..moveTo(5, 3)
      ..lineTo(17, 7)
      ..lineTo(5, 12)
      ..close();
    if (on) paintHatch(canvas, flag, const Rect.fromLTWH(0, 0, 20, 24), InkColors.red);
    canvas.drawPath(flag, pen);
  }

  @override
  bool shouldRepaint(covariant _FlagPainter oldDelegate) => oldDelegate.on != on;
}

class NumberBox extends StatelessWidget {
  const NumberBox({
    super.key,
    required this.number,
    required this.answered,
    required this.flagged,
    required this.onTap,
  });

  final int number;
  final bool answered;
  final bool flagged;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Semantics(
      button: true,
      label: 'Question $number${answered ? ', answered' : ''}${flagged ? ', marked for review' : ''}',
      child: GestureDetector(
        onTap: onTap,
        child: CustomPaint(
          painter: HatchCardPainter(
            seed: number * 17 + 3,
            hatch: answered ? InkColors.green : null,
            radius: 14,
          ),
          child: Stack(
            children: [
              Center(
                child: Text(
                  '$number',
                  style: InkText.heading.copyWith(fontSize: 22),
                ),
              ),
              if (flagged)
                const Positioned(
                  right: 4,
                  top: 4,
                  child: FlagIcon(on: true),
                ),
            ],
          ),
        ),
      ),
    );
  }
}

class ChapterDoodle extends StatelessWidget {
  const ChapterDoodle({super.key, required this.kind});

  final int kind;

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: const Size(46, 46),
      painter: _DoodlePainter(kind),
    );
  }
}

class _DoodlePainter extends CustomPainter {
  _DoodlePainter(this.kind);

  final int kind;

  @override
  void paint(Canvas canvas, Size size) {
    final pen = Paint()
      ..color = InkColors.blue
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1.6
      ..strokeCap = StrokeCap.round;
    final c = size.center(Offset.zero);
    switch (kind % 12) {
      case 0:
        canvas.drawPath(inkOval(c, 16, 16, 1), pen);
        canvas.drawPath(inkOval(c, 8, 8, 2), pen);
        break;
      case 1:
        canvas.drawPath(inkLine(const Offset(8, 34), const Offset(22, 12), 1), pen);
        canvas.drawPath(inkLine(const Offset(24, 34), const Offset(38, 12), 2), pen);
        break;
      case 2:
        canvas.drawPath(inkLine(const Offset(6, 30), const Offset(16, 16), 1), pen);
        canvas.drawPath(inkLine(const Offset(16, 16), const Offset(28, 30), 2), pen);
        canvas.drawPath(inkLine(const Offset(28, 30), const Offset(40, 16), 3), pen);
        break;
      case 3:
        _text(canvas, 'C–X', c);
        break;
      case 4:
        _text(canvas, 'OH', c);
        break;
      case 5:
        _text(canvas, 'C=O', c);
        break;
      case 6:
        _text(canvas, 'CO2H', c);
        break;
      case 7:
        _text(canvas, 'NH2', c);
        break;
      case 8:
        canvas.drawPath(inkOval(c, 16, 16, 4), pen);
        canvas.drawPath(inkLine(const Offset(14, 18), const Offset(32, 28), 3), pen);
        break;
      case 9:
        canvas.drawPath(inkOval(Offset(c.dx, c.dy + 2), 12, 16, 5), pen);
        canvas.drawPath(inkLine(Offset(c.dx, 8), Offset(c.dx, 16), 2, amplitude: 0.4), pen);
        break;
      case 10:
        canvas.drawPath(inkLine(const Offset(16, 8), const Offset(16, 30), 1, amplitude: 0.4), pen);
        canvas.drawPath(inkLine(const Offset(30, 8), const Offset(30, 30), 2, amplitude: 0.4), pen);
        canvas.drawPath(inkOval(const Offset(23, 32), 12, 6, 3), pen);
        break;
      default:
        _text(canvas, 'abc', c);
    }
  }

  void _text(Canvas canvas, String text, Offset center) {
    final painter = TextPainter(
      text: TextSpan(text: text, style: InkText.heading.copyWith(fontSize: 14)),
      textDirection: TextDirection.ltr,
    )..layout();
    painter.paint(canvas, center - Offset(painter.width / 2, painter.height / 2));
  }

  @override
  bool shouldRepaint(covariant _DoodlePainter oldDelegate) => oldDelegate.kind != kind;
}
