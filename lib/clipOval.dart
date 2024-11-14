// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class ClipOvalDemo extends StatefulWidget {
  const ClipOvalDemo({super.key});

  @override
  State<ClipOvalDemo> createState() => _ClipOvalDemoState();
}

class _ClipOvalDemoState extends State<ClipOvalDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text(
          'CLIP OVAL',
          style: TextStyle(
              fontSize: 22, color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipOval(
                clipBehavior: Clip.antiAlias,
                child: Image(
                  image: NetworkImage(
                      'https://images.pexels.com/photos/1592384/pexels-photo-1592384.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                  width: 300,
                  height: 300,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'ClipOval is a Flutter widget that clips its child widget into an oval or circular shape. Its especially useful when you want to make widgets like images or icons circular or oval-shaped.\nclipBehavior: Defines the clipping behavior, usually set to Clip.\nantiAlias for smooth edges.\nImage Sizing: Set the width and height to control the size of the circular image.\nBoxFit.cover: Ensures the image fills the circular frame without distortion.',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
    );
  }
}
