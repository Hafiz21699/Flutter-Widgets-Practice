// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ClipRRectDemo extends StatefulWidget {
  const ClipRRectDemo({super.key});

  @override
  State<ClipRRectDemo> createState() => _ClipRRectDemoState();
}

class _ClipRRectDemoState extends State<ClipRRectDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text(
          'CLIPRRECT',
          style: TextStyle(
              fontSize: 22, color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipRRect(
                  borderRadius:
                      BorderRadius.vertical(top: Radius.elliptical(95, 95)),
                  child: Image.network(
                      'https://images.pexels.com/photos/1592384/pexels-photo-1592384.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1')),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                'Clip is basically derived from clipper.\nIt is a widget that clips its child with a roubded rectangle.\nUseful specially to clip images in different scenario\nKey Properties:\nborder-radius\nclip-behavior\nchild\nIn the above example, we can clearly see that the upper edges of cliprrect are rounded but lower edges are straight',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
    );
  }
}
