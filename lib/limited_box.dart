import 'package:flutter/material.dart';

class LimitedBoxDemo extends StatelessWidget {
  const LimitedBoxDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('Limited Box Demo'),
      ),
      body: Center(
        child: LimitedBox(
          maxWidth: 400,
          maxHeight: 500,
          child: Container(
            color: Colors.blue,
            child: const Text(
              'This is a limited box and in this widget, the size of text and container cannot be exceded from the maximum height and maximum width of the limited box. The height of limited box is 300 and the width is 200 so anything inside it cannot be greater than this height or width ',
              style: TextStyle(fontSize: 30),
            ),
          ),
        ),
      ),
    );
  }
}
