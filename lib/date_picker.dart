// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';

class DatePickerDemo extends StatefulWidget {
  const DatePickerDemo({super.key});

  @override
  State<DatePickerDemo> createState() => _DatePickerDemoState();
}

class _DatePickerDemoState extends State<DatePickerDemo> {
  DateTime _dateTime = DateTime.now();

  void _showDatepicker() {
    showDatePicker(
            context: context,
            initialDate: DateTime.now(),
            firstDate: DateTime(1998),
            lastDate: DateTime(2030))
        .then((value) {
      setState(() {
        _dateTime = value ?? _dateTime;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.tealAccent,
        title: Text(
          'Date Picker Flutter',
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 22),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Text(
              _dateTime.toString(),
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            SizedBox(
              height: 50,
            ),
            MaterialButton(
              onPressed: () {
                _showDatepicker();
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Choose Date',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
              color: Colors.deepPurple,
            ),
          ],
        ),
      ),
    );
  }
}
