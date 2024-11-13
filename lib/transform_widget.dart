// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class TransformDemo extends StatelessWidget {
  const TransformDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text(
          'Transform Widget',
          style: TextStyle(
              fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Transform.rotate(
              //rotates the coontainer
              angle: 0.75,
              child: Container(
                width: 100,
                height: 100,
                color: Colors.blue,
              ),
            ),
            SizedBox(
              height: 60,
            ),
            Transform.scale(
              //scales up or scales down the size
              scale: 1.3,
              child: Container(
                height: 120,
                width: 120,
                color: Colors.teal,
              ),
            ),
            SizedBox(
              height: 60,
            ),
            Transform.translate(
              // moves container to right,left,up and down
              offset: const Offset(50, 40),
              child: Container(
                height: 100,
                width: 100,
                color: Colors.indigo,
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Transform(
              //distorts the container
              transform: Matrix4.skew(0.7, 0.6),
              child: Container(
                height: 100,
                width: 100,
                color: Colors.amber,
              ),
            ),
            Transform(
              transform: Matrix4.identity()..scale(-1.0, 1.0),
              alignment:
                  Alignment.center, // flip from the center
              child: Container(
                color: Colors.blue,
                width: 100,
                height: 100,
                child: Center(child: Text('Flip X')),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
