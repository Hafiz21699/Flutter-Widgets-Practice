// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class FractionallySizedBoxDemo extends StatelessWidget {
  const FractionallySizedBoxDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.limeAccent,
        title: const Text(
          'Fractionally Sized Box Demo',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              height: 300,
              width: 300,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(20),
              ),
              child: FractionallySizedBox(
                widthFactor: 0.8,
                heightFactor: 0.15,
                child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      '0.8 x 0.15',
                      style: TextStyle(color: Colors.black),
                    )),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                'The above container and the elevated button inside that container is an example of fractionally sized box.\nFractionallySizedBox is a widget that allows you to specify the size of a child widget relative to its parent widget.\nThe size is determined by multiplying the childs width or height factor by the parents size\nThe size ofelevated button is in fractional value i.e\nwidth (0.8) x height (0.15)',
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
              ),
            )
          ],
        ),
      ),
    );
  }
}
