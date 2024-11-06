// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class GridviewDemo extends StatelessWidget {
  const GridviewDemo({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Color> colors = [
      Colors.red,
      Colors.green,
      Colors.blue,
      Colors.orange,
      Colors.purple,
      Colors.cyan,
      Colors.pink,
      Colors.blueGrey,
      Colors.indigo,
      Colors.teal,
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          'GridViewBuilder',
          style: TextStyle(
              fontSize: 20,
              color: Colors.black,
              fontWeight: FontWeight.bold,
              shadows: [
                BoxShadow(
                    blurRadius: 2,
                    spreadRadius: 2,
                    offset: Offset(0, 1),
                    color: Colors.grey)
              ]),
        ),
        centerTitle: true,
      ),
      body: GridView(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        padding: EdgeInsets.all(10),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 5,
          mainAxisSpacing: 8,
          crossAxisSpacing: 8,
        ),
        children: <Widget>[
          for (int i = 0; i < 100; i++)
            Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: colors[i % colors.length], // Assign color based on index
              ),
              child: Center(
                child: Text(
                  '$i',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            )
        ],
      ),
    );
  }
}
