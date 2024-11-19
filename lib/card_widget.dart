// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class CardWidgetDemo extends StatelessWidget {
  const CardWidgetDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text(
          'CARD WIDGET',
          style: TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: 100,
            width: double.infinity,
            child: Card(
              borderOnForeground: true,
              color: Colors.blueGrey,
              elevation: 25,
              shadowColor: Colors.red,
              margin: EdgeInsets.all(8.0),
              shape: BeveledRectangleBorder(
                  borderRadius: BorderRadius.circular(5)),
              surfaceTintColor: Colors.teal,
              semanticContainer: true,
              child: Center(
                child: Text(
                  'This is an example of Card',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.black),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 100,
            width: double.infinity,
            child: Card(
              borderOnForeground: true,
              color: Colors.blueGrey,
              elevation: 25,
              shadowColor: Colors.red,
              margin: EdgeInsets.all(8.0),
              shape: BeveledRectangleBorder(
                  borderRadius: BorderRadius.circular(5)),
              surfaceTintColor: Colors.teal,
              semanticContainer: true,
              child: Center(
                child: Text(
                  'This is an example of Card',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.black),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 100,
            width: double.infinity,
            child: Card(
              borderOnForeground: true,
              color: Colors.blueGrey,
              elevation: 25,
              shadowColor: Colors.red,
              margin: EdgeInsets.all(8.0),
              shape: BeveledRectangleBorder(
                  borderRadius: BorderRadius.circular(5)),
              surfaceTintColor: Colors.teal,
              semanticContainer: true,
              child: Center(
                child: Text(
                  'This is an example of Card',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.black),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 100,
            width: double.infinity,
            child: Card(
              borderOnForeground: true,
              color: Colors.blueGrey,
              elevation: 25,
              shadowColor: Colors.red,
              margin: EdgeInsets.all(8.0),
              shape: BeveledRectangleBorder(
                  borderRadius: BorderRadius.circular(5)),
              surfaceTintColor: Colors.teal,
              semanticContainer: true,
              child: Center(
                child: Text(
                  'This is an example of Card',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.black),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 100,
            width: double.infinity,
            child: Card(
              borderOnForeground: true,
              color: Colors.blueGrey,
              elevation: 25,
              shadowColor: Colors.red,
              margin: EdgeInsets.all(8.0),
              shape: BeveledRectangleBorder(
                  borderRadius: BorderRadius.circular(5)),
              surfaceTintColor: Colors.teal,
              semanticContainer: true,
              child: Center(
                child: Text(
                  'This is an example of Card',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.black),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
