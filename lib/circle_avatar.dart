// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class CircleAvatarDemo extends StatefulWidget {
  const CircleAvatarDemo({super.key});

  @override
  State<CircleAvatarDemo> createState() => _CircleAvatarDemoState();
}

class _CircleAvatarDemoState extends State<CircleAvatarDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text(
          'CIRCLE AVATAR',
          style: TextStyle(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      backgroundColor: Colors.blue.shade100,
      body: Center(
        child: Column(
          children: <Widget>[
            CircleAvatar(
              radius: 30,
              backgroundColor: Colors.pink,
              child: Text(
                'A',
                style: TextStyle(color: Colors.white),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            CircleAvatar(
              radius: 20,
              backgroundColor: Colors.green,
              child: Text(
                'B',
                style: TextStyle(color: Colors.white),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            CircleAvatar(
              radius: 15,
              backgroundColor: Colors.blue,
              child: Text(
                'C',
                style: TextStyle(color: Colors.white),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            CircleAvatar(
              radius: 10,
              backgroundColor: Colors.yellow,
              child: Text(
                'D',
                style: TextStyle(color: Colors.black),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage(
                  'https://imgcdn.stablediffusionweb.com/2024/3/15/c83e43e9-5cb0-407f-bd5c-87cf8f101a37.jpg'),
            ),
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                'Ciurcle Avatar is a rounded UI element thaty can be used to display mostly dp pictures in chat apps.\n It is also used to insert icon , or text.\n Radius: Adjusts the size of the CircleAvatar.\n Background Color: Sets the background color of the circle.\n Foreground Color: Sets the color of the icon or text.',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
    );
  }
}
