// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class PopUpMenuButtonDemo extends StatefulWidget {
  const PopUpMenuButtonDemo({super.key});

  @override
  State<PopUpMenuButtonDemo> createState() => _PopUpMenuButtonDemoState();
}

class _PopUpMenuButtonDemoState extends State<PopUpMenuButtonDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan.shade100,
        title: Text('PopUp Menu Button'),
        actions: <Widget>[
          PopupMenuButton(
            itemBuilder: (context) {
              return [
                PopupMenuItem(child: Text('Profile')),
                PopupMenuItem(child: Text('Record')),
                PopupMenuItem(child: Text('Services')),
                PopupMenuItem(child: Text('Profit')),
                PopupMenuItem(child: Text('About')),
              ];
            },
          )
        ],
      ),
      backgroundColor: Colors.cyan.shade400,
      body: Center(
        child: Text('PopUp Menu Button'),
      ),
    );
  }
}
