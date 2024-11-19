// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class EXpansionTileDemo extends StatefulWidget {
  const EXpansionTileDemo({super.key});

  @override
  State<EXpansionTileDemo> createState() => _EXpansionTileDemoState();
}

class _EXpansionTileDemoState extends State<EXpansionTileDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green.shade300,
          title: Text(
            'EXPANSION TILE',
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black),
          ),
        ),
        backgroundColor: Colors.green.shade100,
        body: ListView(
          children: <Widget>[
            ExpansionTile(
              leading: Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.pink),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image(
                    image: NetworkImage(
                        'https://images.pexels.com/photos/248159/pexels-photo-248159.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              title: Text(
                'This is an Expansion Tile',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              subtitle: Text('Click on the arrow in trailing to expand tile'),
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                      'This is the area where the expanded portion willl appear and the hidden information is displayed here'),
                )
              ],
            ),
          ],
        ));
  }
}
