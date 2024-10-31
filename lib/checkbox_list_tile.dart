// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class CheckBoxListTileDemo extends StatefulWidget {
  const CheckBoxListTileDemo({super.key});

  @override
  State<CheckBoxListTileDemo> createState() => _CheckBoxListTileDemoState();
}

class _CheckBoxListTileDemoState extends State<CheckBoxListTileDemo> {
  bool _ischecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey.shade800,
        title: Text(
          'CheckBoxListTile',
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.blue.shade300, Colors.green.shade300]),
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    spreadRadius: 3,
                    blurRadius: 3,
                    offset: Offset(0, 3))
              ]),
          child: CheckboxListTile(
            title: Text(
              'I agree to the term and conditions',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              'Please read the term and conditions carefully',
              style: TextStyle(color: Colors.black, fontSize: 12),
            ),
            value: _ischecked,
            onChanged: (value) {
              setState(() {
                _ischecked = value ?? _ischecked;
              });
            },
            activeColor: Colors.cyan,
            checkColor: Colors.black,
            secondary: Icon(
              Icons.check_circle,
              color: _ischecked ? Colors.deepPurple : Colors.grey.shade50,
            ),
          ),
        ),
      ),
    );
  }
}
