//Import necessary Flutter material design package
import 'package:drawingexample/filledpathpainter.dart';
import "package:flutter/material.dart";
import 'package:path_drawing/path_drawing.dart';
// Define a triangle path using SVG path data
final trianglePath = parseSvgPathData('M200 0 L75 200 L225 200 Z');
// Main widget for the drawing example
class DrawingExample extends StatelessWidget {
  const DrawingExample({super.key});
  
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => print('tap'),
      child: CustomPaint(
        painter: FilledPathPainter(
          path: trianglePath,
          color: Colors.blue,
        ),
      ),
    );
  }
}
