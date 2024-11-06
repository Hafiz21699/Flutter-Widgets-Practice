// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class CustomScrollWidgetDemo extends StatefulWidget {
  const CustomScrollWidgetDemo({super.key});

  @override
  State<CustomScrollWidgetDemo> createState() => _CustomScrollWidgetDemoState();
}

class _CustomScrollWidgetDemoState extends State<CustomScrollWidgetDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple.shade400,
        leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
        title: Center(
          child: Text(
            'CUSTOM SCROLL WIDGET',
            style: TextStyle(
                color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.menu,
              color: Colors.black,
            ),
          )
        ],
      ),
      backgroundColor: Colors.blueAccent.shade100,
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            onStretchTrigger: () async {},
            forceElevated: true,
            stretch: true,
            //pinned: true,
            expandedHeight: 200,
            backgroundColor: Colors.deepPurple.shade400,
            flexibleSpace: FlexibleSpaceBar(
              background: Image(
                image: NetworkImage(
                    'https://images.pexels.com/photos/807598/pexels-photo-807598.jpeg'),
                fit: BoxFit.cover,
              ),
              collapseMode: CollapseMode.pin,
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 100,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.purple,
                      borderRadius: BorderRadius.circular(25)),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
