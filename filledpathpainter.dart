//Import the Flutter Material library
import 'package:flutter/material.dart';

// Custom painter class to fill a path with a specified color 
class FilledPathPainter extends CustomPainter {
  const FilledPathPainter({
    required this.path,
    required this.color,
  });

  final Path path;
  final Color color;

  @override
  bool shouldRepaint(FilledPathPainter oldDelegate) =>
      oldDelegate.path != path || oldDelegate.color != color;
//Paint the specified path on the given canvas
  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawPath(
      path,
      Paint()
        ..color = color
        ..style = PaintingStyle.fill,
    );
  }

  @override
  bool hitTest(Offset position) => path.contains(position);
}
