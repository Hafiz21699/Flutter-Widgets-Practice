// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';

class ButtonText extends StatefulWidget {
  const ButtonText({super.key});

  @override
  State<ButtonText> createState() => _ButtonTextState();
}

class _ButtonTextState extends State<ButtonText> {
  int number = 0;
  bool isSwitched = false;
  bool isChecked = false;
  String? _option = 'Option 1';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.greenAccent,
          title: Text(
            'Button Text',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        body: Column(children: <Widget>[
          TextButton(
            onPressed: () {
              print("Button Tapped");
            },
            child: Text(
              'Click here',
              style: TextStyle(color: Colors.black),
            ),
            style: ButtonStyle(
              backgroundColor: WidgetStatePropertyAll(Colors.brown.shade300),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text(
              'Elevated button',
              style: TextStyle(color: Colors.black),
            ),
            style: ElevatedButton.styleFrom(
              elevation: 20,
              shadowColor: Colors.black.withOpacity(1),
              backgroundColor: Colors.blue,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
            ),
            onLongPress: () {
              print("Long Pressed");
            },
          ),
          SizedBox(
            height: 10,
          ),
          OutlinedButton(
            onPressed: () {
              print('Button Pressed');
            },
            child: Text(
              'Outlined Button',
              style: TextStyle(color: Colors.black, fontSize: 18),
            ),
            style: OutlinedButton.styleFrom(
              backgroundColor: Colors.teal,
            ),
          ),
          IconButton(
            onPressed: () {
              print("IconButton Tapped");
            },
            icon: Icon(
              Icons.zoom_out_sharp,
              color: Colors.pinkAccent,
              shadows: [
                BoxShadow(spreadRadius: 2, blurRadius: 2, offset: Offset(0, 3))
              ],
              size: 80,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          FloatingActionButton(
            onPressed: () {},
            child: Icon(Icons.add),
            backgroundColor: Colors.indigo,
            foregroundColor: Colors.white,
            elevation: 30,
            shape: BeveledRectangleBorder(
                borderRadius: BorderRadius.circular(25),
                side: BorderSide(
                    color: Colors.pink, width: 2, style: BorderStyle.solid)),
          ),
          SizedBox(
            height: 15,
          ),
          Center(
            child: InkWell(
              onTap: () {
                print("InkWell Tapped");
              },
              child: Container(
                height: 60,
                width: 60,
                color: Colors.blue,
                child: Center(
                  child: Text(
                    'InkWell',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Center(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  number++;
                });
                print('Tapped $number');
              },
              child: Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5), color: Colors.teal),
                child: Center(child: Text('$number')),
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Center(
            child: Switch(
                value: isSwitched,
                onChanged: (value) {
                  setState(() {
                    isSwitched = value;
                  });
                }),
          ),
          SizedBox(
            height: 10,
          ),
          Center(
            child: Checkbox(
              value: isChecked,
              activeColor: Colors.teal,
              tristate: true,
              onChanged: (bool? newBool) {
                setState(() {
                  isChecked = newBool ?? false;
                });
              },
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Column(
            children: <Widget>[
              ListTile(
                title: Text('Option 1'),
                leading: Radio<String>(
                  value: 'Option 1',
                  groupValue: _option,
                  onChanged: (String? value) {
                    setState(() {
                      _option = value;
                    });
                  },
                ),
              ),
              ListTile(
                title: Text('Option 2'),
                leading: Radio<String>(
                  value: 'Option 2',
                  groupValue: _option,
                  onChanged: (String? value) {
                    setState(() {
                      _option = value;
                    });
                  },
                ),
              ),
            ],
          )
        ]));
  }
}
