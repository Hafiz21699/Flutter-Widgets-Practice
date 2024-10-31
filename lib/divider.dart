// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class DividerDemo extends StatefulWidget {
  const DividerDemo({super.key});

  @override
  State<DividerDemo> createState() => _DividerDemoState();
}

class _DividerDemoState extends State<DividerDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text(
          'Divider Demo',
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            Container(
              height: 100,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.pink, borderRadius: BorderRadius.circular(25)),
            ),
            Divider(
              color: Colors.black,
              thickness: 2,
              height: 10,
              indent: 5,
              endIndent: 5,
            ),
            Container(
              height: 100,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.blue, borderRadius: BorderRadius.circular(25)),
            ),
            Divider(
              color: Colors.black,
              thickness: 2,
              height: 10,
              indent: 5,
              endIndent: 5,
            ),
            Container(
              height: 100,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.green, borderRadius: BorderRadius.circular(25)),
            ),
            Divider(
              color: Colors.black,
              thickness: 2,
              height: 10,
              indent: 5,
              endIndent: 5,
            ),
            Container(
              height: 100,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.purple,
                  borderRadius: BorderRadius.circular(25)),
            ),
          ],
        ),
      ),
    );
  }
}
