// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ListViewAndListViewBuilder extends StatelessWidget {
  const ListViewAndListViewBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    // List of colors for each container
    final List<Color> containerColors = [
      Colors.blue,
      Colors.green,
      Colors.red,
      Colors.deepPurpleAccent,
      Colors.brown,
      Colors.teal,
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber.shade300,
        title: Text(
          'ListView & ListViewBuilder',
          style: TextStyle(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: containerColors.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: <Widget>[
                Container(
                  height: 150,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: containerColors[index],
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                Divider(
                  thickness: 1,
                  color: Colors.black,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
