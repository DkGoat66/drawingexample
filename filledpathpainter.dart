//Import the necessary package: Flutter Material library
import 'package:flutter/material.dart';

// Custom painter class to fill a path with a specified color 
class FilledPathPainter extends CustomPainter {
  const FilledPathPainter({
    required this.path,
    required this.color,
  });
  //Data
  final Path path;
  final Color color;

  // Determines whether the painter should repaint
  // Repaints if the path or color has changed
  @override
  bool shouldRepaint(FilledPathPainter oldDelegate) =>
      oldDelegate.path != path || oldDelegate.color != color;
//Paint the specified path on the given canvas
  @override
  void paint(Canvas canvas, Size size) {
    // Draws the path on the canvas with the specified color
    canvas.drawPath(
      path,
      Paint()
        ..color = color
        ..style = PaintingStyle.fill,
    );
  }
// Hit test to check if a given position is within the painted path
  @override
  bool hitTest(Offset position) => path.contains(position);
}
