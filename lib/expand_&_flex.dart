import 'package:flutter/material.dart';

class ExpandAndFlexDemo extends StatelessWidget {
  const ExpandAndFlexDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("Expanded and Flex Example")),
        body: Column(
          children: [
            Expanded(
              flex: 3,
              child: Container(
                color: Colors.red,
                child: const Center(
                  child: Text(
                    '1',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                color: Colors.green,
                child: const Center(
                  child: Text(
                    '2',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: Container(
                color: Colors.blue,
                child: const Center(
                  child: Text(
                    '3',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
