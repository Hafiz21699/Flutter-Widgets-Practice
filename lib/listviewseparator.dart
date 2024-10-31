// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class ListViewSeparator extends StatelessWidget {
  const ListViewSeparator({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black87,
          title: Text(
            'ListViewSeparator',
            style: TextStyle(color: Colors.teal),
          ),
          centerTitle: true,
        ),
        body: ListView.separated(
          itemCount: 50,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 100,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.blueGrey,
                    borderRadius: BorderRadius.circular(25),
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 2.5,
                          spreadRadius: 2.5,
                          offset: Offset(0, 3))
                    ]),
              ),
            );
          },
          separatorBuilder: (context, index) {
            return Divider(
              color: Colors.black,
              height: 1,
              thickness: 1.5,
            );
          },
        ));
  }
}
