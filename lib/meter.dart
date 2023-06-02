import 'package:flutter/material.dart';
import 'dart:math';

class RadialGauge extends StatelessWidget {
  final double value;
  final double size;
  final double strokeWidth;
  final Color progressColor;
  final Color backgroundColor;
  final Color dotColor;

  const RadialGauge({
    super.key,
    required this.value,
    this.size = 300.0,
    this.strokeWidth = 30.0,
    this.progressColor = Colors.deepPurple,
    this.backgroundColor = Colors.grey,
    this.dotColor = Colors.red,
  });

  @override
  Widget build(BuildContext context) {
    double progressAngle = 2 * pi * value;
    return SizedBox(
      width: size,
      height: size,
      child: CustomPaint(
        painter: RadialGaugePainter(
          progressAngle: progressAngle,
          strokeWidth: strokeWidth,
          progressColor: progressColor,
          backgroundColor: backgroundColor,
          dotColor: dotColor,
        ),
      ),
    );
  }
}

class RadialGaugePainter extends CustomPainter {
  final double progressAngle;
  final double strokeWidth;
  final Color progressColor;
  final Color backgroundColor;
  final Color dotColor;

  RadialGaugePainter({
    required this.progressAngle,
    required this.strokeWidth,
    required this.progressColor,
    required this.backgroundColor,
    required this.dotColor,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height / 2);
    final radius = min(size.width / 2, size.height / 2);

    // Draw background circle
    final backgroundPaint = Paint()
      ..color = backgroundColor
      ..style = PaintingStyle.stroke
      ..strokeWidth = strokeWidth;
    canvas.drawCircle(center, radius, backgroundPaint);

    // Draw progress arc
    final progressPaint = Paint()
      ..color = progressColor
      ..style = PaintingStyle.stroke
      ..strokeWidth = strokeWidth
      ..strokeCap = StrokeCap.round;
    canvas.drawArc(
      Rect.fromCircle(center: center, radius: radius),
      -pi / 2,
      progressAngle,
      false,
      progressPaint,
    );

    // Draw dot at the end of progress arc
    final dotRadius = strokeWidth / 2;
    final dotPaint = Paint()..color = dotColor;
    final dx = center.dx + radius * cos(progressAngle - pi / 2);
    final dy = center.dy + radius * sin(progressAngle - pi / 2);
    canvas.drawCircle(Offset(dx, dy), dotRadius, dotPaint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
