// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class ScrollBarDemo extends StatelessWidget {
  const ScrollBarDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Scroll Bar',
          style: TextStyle(color: Colors.black, fontSize: 20),
        ),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: Scrollbar(
        thumbVisibility: true,
        trackVisibility: true,
        interactive: true,
        thickness: 18,
        radius: Radius.circular(25),
        child: ListView.builder(
            itemCount: 80,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(
                    top: 10, bottom: 10, left: 15, right: 25),
                child: Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [
                        Colors.cyan,
                        Colors.blue,
                        Colors.teal,
                        Colors.blueGrey
                      ]),
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                          color: Colors.black, style: BorderStyle.solid)),
                  child: Center(
                      child: Text(
                    'Container $index',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  )),
                ),
              );
            }),
      ),
    );
  }
}
