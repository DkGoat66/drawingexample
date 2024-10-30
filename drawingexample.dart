//Import necessary Flutter material design package
import 'package:drawingexample/filledpathpainter.dart';
import "package:flutter/material.dart";
import 'package:path_drawing/path_drawing.dart';
// Define a triangle path using SVG path data
final trianglePath = parseSvgPathData('M200 0 L75 200 L225 200 Z');
// Main widget for the drawing example
class DrawingExample extends StatelessWidget {
  const DrawingExample({super.key});

  // Build method that defines the UI
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // Define a gesture for tap detection 
      onTap: () => print('tap'),
      // CustomPaint widget to paint custom shapes
      child: CustomPaint(
        painter: FilledPathPainter(
          path: trianglePath,
          color: Colors.blue,
        ),
      ),
    );
  }
}
