// ignore_for_file: prefer_const_constructors

import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedContainerDemo extends StatefulWidget {
  const AnimatedContainerDemo({super.key});

  @override
  State<AnimatedContainerDemo> createState() => _AnimatedContainerDemoState();
}

class _AnimatedContainerDemoState extends State<AnimatedContainerDemo> {
  double height = 200;
  double width = 200;
  Color color = Colors.indigo;
  BorderRadiusGeometry radiusGeometry = BorderRadius.circular(25);
  Timer? _timer;

  void startAnimation() {
    const duration = Duration(milliseconds: 500); // Animation interval
    const totalTime = Duration(seconds: 10); // Total animation time
    final random = Random();

    _timer?.cancel(); // Cancel if any timer exist. start again
    var elapsedTime = Duration.zero;

    _timer = Timer.periodic(duration, (timer) {
      setState(() {
        height = random.nextInt(300).toDouble() + 100;
        width = random.nextInt(300).toDouble() + 100;
        color = Color.fromRGBO(
            random.nextInt(256), random.nextInt(256), random.nextInt(256), 1);
        radiusGeometry = BorderRadius.circular(random.nextInt(100).toDouble());
      });

      elapsedTime += duration;
      if (elapsedTime >= totalTime) {
        timer.cancel(); // Stop the timer after totalTime
      }
    });
  }

  @override
  void dispose() {
    _timer?.cancel(); // Cancel timer when widget is disposed
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: Text(
          'ANIMATED CONTAINER',
          style: TextStyle(
              fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      backgroundColor: Colors.indigo.shade200,
      body: Center(
        child: AnimatedContainer(
          height: height,
          width: width,
          decoration: BoxDecoration(color: color, borderRadius: radiusGeometry),
          duration: const Duration(seconds: 1),
          curve: Curves.fastOutSlowIn,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          startAnimation();
        },
        child: Icon(
          Icons.refresh_sharp,
        ),
      ),
    );
  }
}
