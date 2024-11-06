import 'package:flutter/material.dart';

class PageViewDemo extends StatefulWidget {
  const PageViewDemo({super.key});

  @override
  State<PageViewDemo> createState() => _PageViewDemoState();
}

class _PageViewDemoState extends State<PageViewDemo> {
  @override
  Widget build(BuildContext context) {
    return PageView(
      children: <Widget>[
        Container(
          color: Colors.blue,
          child: const Center(child: Text('Page 1')),
        ),
        Container(
          color: Colors.green,
          child: const Center(child: Text('Page 2')),
        ),
        Container(
          color: Colors.yellow,
          child: const Center(child: Text('Page 3')),
        ),
        Container(
          color: Colors.red,
          child: const Center(child: Text('Page 4')),
        ),
        Container(
          color: Colors.purple,
          child: const Center(child: Text('Page 5')),
        ),
        Container(
          color: Colors.pink,
          child: const Center(child: Text('Page 6')),
        ),
        Container(
          color: Colors.orange,
          child: const Center(child: Text('Page 7')),
        ),
        Container(
          color: Colors.lightBlue,
          child: const Center(child: Text('Page 8')),
        ),
        Container(
          color: Colors.teal,
          child: const Center(child: Text('Page 9')),
        ),
      ],
    );
  }
}
