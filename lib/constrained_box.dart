// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ConstrainedBoxDemo extends StatefulWidget {
  const ConstrainedBoxDemo({super.key});

  @override
  State<ConstrainedBoxDemo> createState() => _ConstrainedBoxDemoState();
}

class _ConstrainedBoxDemoState extends State<ConstrainedBoxDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        title: Text(
          'Constrained Box Demo',
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              height: 250,
              width: 250,
              decoration: BoxDecoration(
                color: Colors.lightGreen,
                borderRadius: BorderRadius.circular(25),
              ),
              child: Center(
                child: ConstrainedBox(
                  constraints: BoxConstraints(
                    maxHeight: 200,
                    minHeight: 5,
                    maxWidth: 200,
                    minWidth: 50,
                  ),
                  child: Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab.',
                    style: TextStyle(overflow: TextOverflow.fade, fontSize: 25),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                  'In the above container, the text that you are seeing is wrapped in the constrained box widget.\n It takes the parameter of box constraint which has 4 properties:\n minimum height\n maximum height\n minimum width \n maximum width\n The fade line in the last is showing that the text is not finished and it is the property of text style widget'),
            )
          ],
        ),
      ),
    );
  }
}
