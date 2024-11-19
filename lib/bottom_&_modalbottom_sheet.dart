// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class BottomSheetDemo extends StatefulWidget {
  const BottomSheetDemo({super.key});

  @override
  State<BottomSheetDemo> createState() => _BottomSheetDemoState();
}

class _BottomSheetDemoState extends State<BottomSheetDemo> {
  void _ShowModalBottomSheet() {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return Container(
          width: double.infinity,
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                Colors.blue,
                Colors.green,
              ]),
              borderRadius: BorderRadius.circular(25)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text(
                'BOTTOM SHEET',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 25),
              ),
              SizedBox(
                height: 100,
              ),
              Container(
                color: Colors.blueGrey.withOpacity(0.4),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'A Modal Bottom Sheet in Flutter is a widget that slides up from the bottom of the screen to display additional content or actions. It is commonly used for short-term tasks, options, or details that the user can interact with.\nUse Cases:\n1.Displaying options (e.g., sharing, filters, or settings).\n2.Short-term tasks like adding items to a list.\n3.Presenting details without leaving the current page.',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black),
                  ),
                ),
              ),
              SizedBox(
                height: 70,
              ),
              ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                        WidgetStatePropertyAll(Colors.deepPurpleAccent),
                    elevation: WidgetStatePropertyAll(25),
                    shadowColor: WidgetStatePropertyAll(Colors.black),
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: SizedBox(
                      width: double.infinity,
                      child: Center(
                          child: Text(
                        'EXIT',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ))))
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade300,
        title: Text(
          'BottomSheet & ModalBottomSheet',
          style: TextStyle(
              fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold),
        ),
        actions: <Widget>[
          IconButton(
              onPressed: () {
                _ShowModalBottomSheet();
              },
              icon: Icon(
                Icons.info_outline,
                color: Colors.black,
              ))
        ],
      ),
      backgroundColor: Colors.blueGrey.shade200,
      body: Center(
        child: Text(
          'Click on the info icon in the app bar to see the bottom sheet',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
