// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class AlertDialogDemo extends StatefulWidget {
  const AlertDialogDemo({super.key});

  @override
  State<AlertDialogDemo> createState() => _AlertDialogDemoState();
}

class _AlertDialogDemoState extends State<AlertDialogDemo> {
  void _basicDialog() {
    showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          elevation: 20,
          backgroundColor: Colors.blueGrey.shade100,
          shadowColor: Colors.amber,
          child: Container(
            padding: EdgeInsets.all(20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text("Custom Dialog"),
                ElevatedButton(
                  onPressed: () => Navigator.of(context).pop(),
                  child: Text("Close"),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  void _simpleDialog() {
    showDialog(
      context: context,
      builder: (context) => SimpleDialog(
        backgroundColor: Colors.blueGrey.shade100,
        elevation: 25,
        title: Text('SIMPLE DIALOG'),
        children: <Widget>[
          SimpleDialogOption(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text('Option # 1'),
          ),
          SimpleDialogOption(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text('Option # 2'),
          ),
          SimpleDialogOption(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text('Option # 3'),
          ),
          SimpleDialogOption(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text('Option # 4'),
          )
        ],
      ),
    );
  }

  void _alertDialog() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: Colors.blueGrey.shade100,
        title: Text('ALERT DIALOG'),
        content: Text('Are you sure you want to exit?'),
        actions: [
          MaterialButton(
              child: Text('Yes'),
              color: Colors.green,
              elevation: 20,
              shape: BeveledRectangleBorder(
                  side: BorderSide(style: BorderStyle.solid)),
              onPressed: () {
                Navigator.pop(context);
              }),
          MaterialButton(
              child: Text('No'),
              color: Colors.red.shade300,
              elevation: 20,
              shape: BeveledRectangleBorder(
                  side: BorderSide(style: BorderStyle.solid)),
              onPressed: () {
                Navigator.pop(context);
              })
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple.shade400,
        title: Center(
          child: Text(
            'DIALOGS',
            style: TextStyle(
                fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            MaterialButton(
                elevation: 30,
                child: Text(
                  'ALERT DIALOG',
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.purple,
                onPressed: _alertDialog),
            SizedBox(
              height: 15,
            ),
            MaterialButton(
                elevation: 30,
                child: Text(
                  'SIMPLE DIALOG',
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.purple,
                onPressed: _simpleDialog),
            SizedBox(
              height: 15,
            ),
            MaterialButton(
                elevation: 30,
                child: Text(
                  'BASIC DIALOG',
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.purple,
                onPressed: _basicDialog),
          ],
        ),
      ),
    );
  }
}
