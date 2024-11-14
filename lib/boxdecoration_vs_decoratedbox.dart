// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class BoxDecorationDemo extends StatefulWidget {
  const BoxDecorationDemo({super.key});

  @override
  State<BoxDecorationDemo> createState() => _BoxDecorationDemoState();
}

class _BoxDecorationDemoState extends State<BoxDecorationDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink.shade200,
        title: Text(
          'BOX DECORATION',
          style: TextStyle(
              fontSize: 22, color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: <Widget>[
              Container(
                height: 250,
                width: 250,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Colors.blueGrey, Colors.indigo]),
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 3, spreadRadius: 3, offset: Offset(0, 4))
                    ]),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'This is a container in which box decoration is used for its decoration.',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              DecoratedBox(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(17),
                    gradient: LinearGradient(
                        colors: [Colors.lightGreen, Colors.teal])),
                child: ListTile(
                  leading: Icon(Icons.person_outline),
                  title: Text(
                      'This is a list tile wrapped in decorated box widget'),
                  subtitle:
                      Text('Difference b/w decorated box and box decoration'),
                  enabled: true,
                  style: ListTileStyle.list,
                  shape: BeveledRectangleBorder(
                      borderRadius: BorderRadius.circular(17),
                      side: BorderSide(
                          style: BorderStyle.solid, color: Colors.black)),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'DecoratedBox is a widget that wraps around another widget to apply a visual decoration (like color, border, gradient, or shadow), using a BoxDecoration. In contrast, BoxDecoration itself is a decoration class that defines those visual properties and is typically used within either a DecoratedBox or a Container.\n In short:\n1.Use DecoratedBox to directly wrap and decorate a widget.\n2.Use Container with BoxDecoration if you need both layout (padding, margin) and decoration, as it combines these features in one widget.',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 13),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
