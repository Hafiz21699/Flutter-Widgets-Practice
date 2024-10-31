// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class TextFieldDemo extends StatefulWidget {
  const TextFieldDemo({super.key});

  @override
  State<TextFieldDemo> createState() => _TextFieldDemoState();
}

class _TextFieldDemoState extends State<TextFieldDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: Text(
          'TextField Demo',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Center(
        heightFactor: 30,
        widthFactor: 20,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            autocorrect: true,
            autofocus: true,
            cursorColor: Colors.black,
            decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                focusColor: Colors.deepPurple,
                //border: InputBorder.none
                hintText: 'First Name',
                prefixIconColor: Colors.deepPurple,
                label: Text(
                  'First Name',
                  style: TextStyle(color: Colors.deepPurple),
                ),
                border: OutlineInputBorder(),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.deepPurple),
                  borderRadius: BorderRadius.circular(8.0),
                )),
          ),
        ),
      ),
    );
  }
}
