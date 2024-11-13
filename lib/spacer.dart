// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class SpacerWidgetDemo extends StatelessWidget {
  const SpacerWidgetDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent.shade100,
        title: Text(
          'Spacer',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(color: Colors.red),
              ),
              Spacer(
                flex: 3,
              ),
              Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(color: Colors.blue),
              ),
              Spacer(
                flex: 1,
              ),
              Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(color: Colors.green),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
                'Spacer is mainly used to add spaces between the widgets.\n It usually works with the rows and columns.\n Its flex property can be used to control how much space it takes relative to other Spacer widgets.\n In the above examples, thespace between the red and the blue cntainer is 3 and the space between blue and green is 1'),
          )
        ],
      ),
    );
  }
}
