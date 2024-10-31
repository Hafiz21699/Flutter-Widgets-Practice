// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';

class TimePickerDemo extends StatefulWidget {
  const TimePickerDemo({super.key});

  @override
  State<TimePickerDemo> createState() => _TimePickerDemoState();
}

class _TimePickerDemoState extends State<TimePickerDemo> {
  TimeOfDay _timeOfDay = TimeOfDay(hour: 16, minute: 19);

  void _ShowTimePicker() {
    showTimePicker(context: context, initialTime: TimeOfDay.now())
        .then((value) {
      setState(() {
        _timeOfDay = value ?? _timeOfDay;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreenAccent.shade400,
        title: Text(
          'Time Picker Demo',
          style: TextStyle(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Text(
              _timeOfDay.format(context).toString(),
              style: TextStyle(fontSize: 22, color: Colors.black),
            ),
            SizedBox(
              height: 300,
            ),
            MaterialButton(
              onPressed: () {
                _ShowTimePicker();
              },
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  'Time Picker',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ),
              color: Colors.green,
            ),
          ],
        ),
      ),
    );
  }
}
