import 'package:flutter/material.dart';

class GestureDetectorExample extends StatefulWidget {
  const GestureDetectorExample({super.key});

  @override
  State<GestureDetectorExample> createState() => _GestureDetectorExampleState();
}

class _GestureDetectorExampleState extends State<GestureDetectorExample> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: const Text('GestureDetector Example'),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            setState(() {
              counter++;
            });
          },
          child: Text('$counter'),
        ),
      ),
    );
  }
}
