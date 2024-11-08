// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class DraggableScrollableSheetDemo extends StatelessWidget {
  const DraggableScrollableSheetDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow.shade400,
        title: Text(
          'DraggableScrollableSheet',
          style: TextStyle(
            fontSize: 20, 
            fontWeight: FontWeight.bold, 
            wordSpacing: 1,
          ),
        ),
      ),
      backgroundColor: Colors.blueGrey,
      body: DraggableScrollableSheet(
        initialChildSize: 0.2,
        minChildSize: 0.1,     
        maxChildSize: 0.8,     
        expand: true,
        builder: (context, scrollController) {
          return Container(
            color: Colors.white30,
            child: ListView.builder(
              controller: scrollController,
              itemCount: 25,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text('Item $index'),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
