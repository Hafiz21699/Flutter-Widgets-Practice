// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class FittedBoxDemo extends StatelessWidget {
  const FittedBoxDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Text(
          'Fitted Box Demo',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          height: 150,
          width: 260,
          decoration: BoxDecoration(
              color: Colors.blueGrey, borderRadius: BorderRadius.circular(20)),
          child: FittedBox(
            child: Text(
              'THIS IS A FITTED BOX DEMO\n The text in this container will adjust its size\n according to the size of container',
              style: TextStyle(fontSize: 100, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}
