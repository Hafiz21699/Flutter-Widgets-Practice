// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class RadioListTileDemo extends StatefulWidget {
  const RadioListTileDemo({super.key});

  @override
  State<RadioListTileDemo> createState() => _RadioListTileDemoState();
}

class _RadioListTileDemoState extends State<RadioListTileDemo> {
  int? _isSelected;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey.shade200,
        title: Text(
          'RadioListTile',
          style: TextStyle(color: Colors.black, fontSize: 20),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: <Widget>[
            RadioListTile(
              title: Text(
                'Male',
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
              value: 1,
              groupValue: _isSelected,
              onChanged: (value) {
                setState(() {
                  _isSelected = value;
                });
              },
              activeColor: Colors.deepOrange,
              fillColor: WidgetStateProperty.all(Colors.deepPurple),
              visualDensity: VisualDensity.compact,
            ),
            RadioListTile(
              title: Text(
                'Female',
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
              value: 2,
              groupValue: _isSelected,
              onChanged: (value) {
                setState(() {
                  _isSelected = value;
                });
              },
              activeColor: Colors.deepOrange,
              fillColor: WidgetStateProperty.all(Colors.deepPurple),
              visualDensity: VisualDensity.compact,
            ),
            RadioListTile(
              title: Text(
                'Transgender',
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
              value: 3,
              groupValue: _isSelected,
              onChanged: (value) {
                setState(() {
                  _isSelected = value;
                });
              },
              activeColor: Colors.deepOrange,
              fillColor: WidgetStateProperty.all(Colors.deepPurple),
              visualDensity: VisualDensity.compact,
            ),
            RadioListTile(
              title: Text(
                'Prefer Not to Say',
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
              value: 4,
              groupValue: _isSelected,
              onChanged: (value) {
                setState(() {
                  _isSelected = value;
                });
              },
              activeColor: Colors.deepOrange,
              fillColor: WidgetStateProperty.all(Colors.deepPurple),
              visualDensity: VisualDensity.compact,
            ),
            SizedBox(
              height: 50,
            ),
            ElevatedButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                            title: Text('Selected Option'),
                            content: Text('Your Selected option: $_isSelected'),
                            actions: <Widget>[
                              TextButton(
                                  onPressed: () => Navigator.of(context).pop(),
                                  child: Text('OK'))
                            ],
                          ));
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepPurple.shade200,
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 30),
                    textStyle: TextStyle(fontSize: 20)),
                child: Text(
                  'Submit',
                  style: TextStyle(color: Colors.black),
                ))
          ],
        ),
      ),
    );
  }
}
