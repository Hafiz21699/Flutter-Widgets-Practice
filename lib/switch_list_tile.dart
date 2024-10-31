// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class SwitchListTileDemo extends StatefulWidget {
  const SwitchListTileDemo({super.key});

  @override
  State<SwitchListTileDemo> createState() => _SwitchListTileDemoState();
}

class _SwitchListTileDemoState extends State<SwitchListTileDemo> {
  bool _isSwitched = false;
  bool _isSwitched2 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text(
          'Switch List Tile',
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      body: Align(
        alignment: Alignment.topLeft,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SwitchListTile(
              title: Text(
                'Allow Location Notification',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              subtitle: Text(
                'This permission access your location',
                style: TextStyle(color: Colors.black, fontSize: 13),
              ),
              value: _isSwitched,
              onChanged: (value) {
                setState(() {
                  _isSwitched = value;
                });
              },
              secondary: Icon(
                Icons.notifications,
                color: Colors.black,
              ),
              activeColor: Colors.green,
              inactiveThumbColor: Colors.grey,
            ),
            SwitchListTile(
              title: Text(
                'Allow Background Task',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              subtitle: Text(
                'This permission works in background',
                style: TextStyle(color: Colors.black, fontSize: 13),
              ),
              value: _isSwitched2,
              onChanged: (value) {
                setState(() {
                  _isSwitched2 = value;
                });
              },
              secondary: Icon(
                Icons.account_tree,
                color: Colors.black,
              ),
              activeColor: Colors.green,
              inactiveThumbColor: Colors.grey,
            ),
          ],
        ),
      ),
    );
  }
}
