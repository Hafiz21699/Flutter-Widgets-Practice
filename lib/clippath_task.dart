import 'package:flutter/material.dart';

void main() {
  runApp(const ClipPathTaskDemo());
}

class ClipPathTaskDemo extends StatelessWidget {
  const ClipPathTaskDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('ClipPath Demo'),
          backgroundColor: Colors.green,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Heart shape
              ClipPath(
                clipper: HeartClipper(),
                child: Container(
                  color: Colors.redAccent,
                  width: 200,
                  height: 200,
                ),
              ),
              const SizedBox(height: 40), // Spacer between shapes

              // Triangle shape
              ClipPath(
                clipper: TriangleClipper(),
                child: Container(
                  color: Colors.blueAccent,
                  width: 200,
                  height: 200,
                ),
              ),
              const SizedBox(height: 40), // Spacer between shapes

              // Hexagon shape
              ClipPath(
                clipper: HexagonClipper(),
                child: Container(
                  color: Colors.blueGrey,
                  width: 200,
                  height: 200,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Heart shape Clipper
class HeartClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final Path path = Path();

    // Start from bottom center
    path.moveTo(size.width / 2, size.height);

    // Draw left side of heart using cubic Bezier curves
    path.cubicTo(
      0, size.height * 0.70, //point 1
      0, size.height * 0.0001, //point 2
      size.width / 2, size.height * 0.3, // End point
    );

    // right side of heart by using cubic Bezier curves
    path.cubicTo(
      size.width, size.height * 0.0001, //point 1
      size.width, size.height * 0.70, //point 2
      size.width / 2, size.height, // End point
    );

    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}

// Triangle shape Clipper
class TriangleClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final Path path = Path();

    //three points of the triangle
    path.moveTo(size.width / 2, 0); // Top center
    path.lineTo(0, size.height); // Bottom left
    path.lineTo(size.width, size.height); // Bottom right
    path.close(); // Connect back to main point from where we started

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}

// Hexagon shape Clipper
class HexagonClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final Path path = Path();
    double w = size.width;
    double h = size.height;

    //six points of the hexagon
    path.moveTo(w * 0.5, 0); // Top center
    path.lineTo(0, h * 0.25); // Top left
    path.lineTo(0, h * 0.75); // Bottom left
    path.lineTo(w * 0.5, h); // Bottom center
    path.lineTo(w, h * 0.75); // Bottom right
    path.lineTo(w, h * 0.25); // Top right
    path.close(); // Connect back to main point from where we started

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
