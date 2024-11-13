// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class StackPractice extends StatefulWidget {
  const StackPractice({super.key});

  @override
  State<StackPractice> createState() => _StackPracticeState();
}

class _StackPracticeState extends State<StackPractice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.brown.shade400,
          leading: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
          title: Center(
            child: Text(
              'Stack Practice',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
          ),
          actions: <Widget>[
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.settings,
                color: Colors.black,
              ),
            ),
            IconButton(
                onPressed: () {}, icon: Icon(Icons.person, color: Colors.black))
          ],
        ),
        body: Column(
          children: <Widget>[
            Center(
              child: Stack(
                children: <Widget>[
                  CircleAvatar(
                    radius: 70,
                    backgroundImage: NetworkImage(
                        'https://img.freepik.com/free-photo/beautiful-rose-studio_23-2150737305.jpg?t=st=1729761325~exp=1729764925~hmac=4abd392e880b8761320ac1a07456b7552bf1a76e882d32caeff1837f9e2068f4&w=360'),
                  ),
                  Positioned(
                      right: 20,
                      bottom: 0,
                      child: Container(
                        height: 20,
                        width: 20,
                        decoration: BoxDecoration(
                            color: Colors.green,
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.white)),
                      ))
                ],
              ),
            ),
          ],
        ));
  }
}
