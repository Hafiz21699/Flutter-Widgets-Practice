// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

class ListWheelScrollViewDemo extends StatefulWidget {
  const ListWheelScrollViewDemo({super.key});

  @override
  _ListWheelScrollViewDemoState createState() =>
      _ListWheelScrollViewDemoState();
}

class _ListWheelScrollViewDemoState extends State<ListWheelScrollViewDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan.shade200,
        title: const Text(
          'LISTWHEEL SCROLL VIEW',
          style: TextStyle(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: ListWheelScrollView(
          itemExtent: 100,
          children: List.generate(
            20,
            (index) {
              return Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.brown,
                      borderRadius: BorderRadius.circular(20)),
                  child: Center(
                      child: Text(
                    'Container $index',
                    style: const TextStyle(color: Colors.white),
                  )),
                ),
              );
            },
          )),
    );
  }
}
