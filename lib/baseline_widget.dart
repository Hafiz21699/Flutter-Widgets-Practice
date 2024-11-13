// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class BaseLineDemo extends StatefulWidget {
  const BaseLineDemo({super.key});

  @override
  State<BaseLineDemo> createState() => _BaseLineDemoState();
}

class _BaseLineDemoState extends State<BaseLineDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepOrange.shade200,
          title: const Text(
            'BaseLine Demo',
            style: TextStyle(
                color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
        ),
        body: Center(
            child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: <Widget>[
              Baseline(
                baseline: 100,
                baselineType: TextBaseline.alphabetic,
                child: Text('baseline 100'),
              ),
              SizedBox(
                width: 10,
                height: 15,
              ),
              Baseline(
                baseline: 200,
                baselineType: TextBaseline.alphabetic,
                child: Text('baseline 200'),
              ),
              SizedBox(
                width: 10,
                height: 15,
              ),
              Baseline(
                  baseline: 300,
                  baselineType: TextBaseline.alphabetic,
                  child: Text('baseline 300')),
              SizedBox(
                width: 10,
                height: 15,
              ),
              Baseline(
                  baseline: 400,
                  baselineType: TextBaseline.alphabetic,
                  child: Text('baseline 400')),
              SizedBox(
                width: 10,
                height: 15,
              ),
            ],
          ),
        )));
  }
}
