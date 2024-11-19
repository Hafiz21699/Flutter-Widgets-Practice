// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class SnackBarDemo extends StatefulWidget {
  const SnackBarDemo({super.key});

  @override
  State<SnackBarDemo> createState() => _SnackBarDemoState();
}

class _SnackBarDemoState extends State<SnackBarDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text(
          'SNACK BAR DEMO',
          style: TextStyle(
              fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
                style: ButtonStyle(
                    elevation: WidgetStatePropertyAll(25),
                    shadowColor: WidgetStatePropertyAll(
                        const Color.fromARGB(255, 41, 7, 195))),
                onPressed: () {
                  final message = SnackBar(
                    content: Text('This is a demo of snack bar.'),
                    backgroundColor: Colors.black,
                    dismissDirection: DismissDirection.horizontal,
                    duration: Duration(seconds: 5),
                    action: SnackBarAction(label: 'Close', onPressed: () {}),
                  );
                  ScaffoldMessenger.of(context).showSnackBar(message);
                },
                child: Text('CLICK HERE')),
          ],
        ),
      ),
    );
  }
}
