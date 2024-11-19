// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class DialogDemo extends StatefulWidget {
  const DialogDemo({super.key});

  @override
  State<DialogDemo> createState() => _DialogDemoState();
}

class _DialogDemoState extends State<DialogDemo> {
  void _basicDialog() {
    showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          elevation: 20,
          backgroundColor: Colors.blueGrey.shade100,
          shadowColor: const Color.fromARGB(255, 114, 0, 235),
          child: Container(
            padding: EdgeInsets.all(20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text("Custom Dialog"),
                ElevatedButton(
                  style: ButtonStyle(
                      elevation: WidgetStatePropertyAll(15),
                      shadowColor: WidgetStatePropertyAll(Colors.purple)),
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
              color: Colors.green,
              elevation: 20,
              shape: BeveledRectangleBorder(
                  side: BorderSide(style: BorderStyle.solid)),
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Yes')),
          MaterialButton(
              color: Colors.red.shade300,
              elevation: 20,
              shape: BeveledRectangleBorder(
                  side: BorderSide(style: BorderStyle.solid)),
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('No'))
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
                color: Colors.purple,
                onPressed: _alertDialog,
                child: Text(
                  'ALERT DIALOG',
                  style: TextStyle(color: Colors.white),
                )),
            SizedBox(
              height: 15,
            ),
            MaterialButton(
                elevation: 30,
                color: Colors.purple,
                onPressed: _simpleDialog,
                child: Text(
                  'SIMPLE DIALOG',
                  style: TextStyle(color: Colors.white),
                )),
            SizedBox(
              height: 15,
            ),
            MaterialButton(
                elevation: 30,
                color: Colors.purple,
                onPressed: _basicDialog,
                child: Text(
                  'BASIC DIALOG',
                  style: TextStyle(color: Colors.white),
                )),
          ],
        ),
      ),
    );
  }
}
