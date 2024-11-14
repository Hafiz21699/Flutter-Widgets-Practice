// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ChipWidgetDemo extends StatefulWidget {
  const ChipWidgetDemo({super.key});

  @override
  _ChipWidgetDemoState createState() => _ChipWidgetDemoState();
}

class _ChipWidgetDemoState extends State<ChipWidgetDemo> {
  bool _isSelected = false;
  bool _isFiltered = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lime,
        title: Text(
          'Chip Widget',
          style: TextStyle(
              fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      backgroundColor: Colors.blueGrey.shade200,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Basic Chip
            Chip(
              avatar: CircleAvatar(
                backgroundColor: Colors.orange,
                child: Icon(Icons.tag, color: Colors.white),
              ),
              label: Text(
                'Basic Chip',
                style: TextStyle(color: Colors.white),
              ),
              backgroundColor: Colors.deepPurple,
              elevation: 8,
              side: BorderSide(color: Colors.white, width: 1.5),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              deleteIcon: Icon(Icons.delete, color: Colors.white),
              onDeleted: () {
                print('Basic Chip deleted');
              },
            ),
            SizedBox(height: 12),

            // ChoiceChip
            ChoiceChip(
              label: Text(
                'Choice Chip',
                style:
                    TextStyle(color: _isSelected ? Colors.white : Colors.black),
              ),
              selected: _isSelected,
              selectedColor: Colors.blue,
              avatar: Icon(
                Icons.check_circle,
                color: _isSelected ? Colors.white : Colors.grey,
              ),
              onSelected: (bool selected) {
                setState(() {
                  _isSelected = selected;
                });
              },
            ),
            SizedBox(height: 12),

            // FilterChip
            FilterChip(
              label: Text(
                'Filter Chip',
                style:
                    TextStyle(color: _isFiltered ? Colors.black : Colors.black),
              ),
              selected: _isFiltered,
              selectedColor: Colors.lightGreen,
              avatar: Icon(
                Icons.filter_alt,
                color: _isFiltered ? Colors.white : Colors.grey,
              ),
              onSelected: (bool selected) {
                setState(() {
                  _isFiltered = selected;
                });
              },
            ),
            SizedBox(height: 12),

            // ActionChip
            ActionChip(
              label: Text('Action Chip'),
              avatar: Icon(Icons.directions_run, color: Colors.white),
              backgroundColor: Colors.pink.shade300,
              onPressed: () {
                print("Action triggered");
              },
            ),
          ],
        ),
      ),
    );
  }
}
