// ignore_for_file: sort_child_properties_last, prefer_const_constructors, avoid_print

import 'package:flutter/material.dart';

class DropDownButton extends StatelessWidget {
  const DropDownButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dropdown Button'),
      ),
      body: Center(
        child: DropdownButton<String>(
          borderRadius: BorderRadius.circular(5),
          dropdownColor: Colors.green,
          elevation: 20,
          hint: Text(
            'Dropdown',
            style: TextStyle(color: Colors.black),
          ),
          icon: Icon(
            Icons.bubble_chart_outlined,
            color: Colors.black,
          ),
          items: ['Option 1', 'Option 2', 'Option 3']
              .map((option) => DropdownMenuItem<String>(
                    child: Text(option),
                    value: option,
                  ))
              .toList(),
          onChanged: (value) {
            // Handle the option that is selected
            print('Selected option: $value');
          },
        ),
      ),
    );
  }
}
