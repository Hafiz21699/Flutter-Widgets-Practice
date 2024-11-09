import 'package:flutter/material.dart';

class ClipPathDemo extends StatelessWidget {
  const ClipPathDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: TriangleClip(),
      child: Container(
        color: Colors.blue, // Color of the triangle
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
      ),
    );
  }
}

class TriangleClip extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.moveTo(0, size.height); // Bottom-left corner
    path.lineTo(size.width, size.height); // Bottom-right corner
    path.lineTo(size.width / 2, 0); // Top-center
    path.close(); // Close the path to form a triangle
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
