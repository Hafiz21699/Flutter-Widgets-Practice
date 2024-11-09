// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class AspectRatioExample extends StatelessWidget {
  const AspectRatioExample({super.key});

  @override
  Widget build(BuildContext context) { 
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
              'https://plus.unsplash.com/premium_photo-1680466057202-4aa3c6329758?q=80&w=1876&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
            ),
            fit: BoxFit.cover,
            filterQuality: FilterQuality.high,
          ),
        ),
        child: Center(
          child: AspectRatio(
            aspectRatio: 16 / 8,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey.shade200.withOpacity(0.5),
              ),
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text(
                  'This container is an example of aspect ratio widget.\n'
                  'The ratio is 16 / 9.\n'
                  'It is helpful in UI elements with fixed width-to-height ratio.\n'
                  'Aspect ratio maintains the shape regardless of screen size.\n'
                  'For instance, a 16:9 video player looks consistent on any device.\n'
                  'This widget is essential in responsive designs.\n'
                  'UI elements like banners or cards often use aspect ratios.\n'
                  'It ensures that content remains visually balanced.\n'
                  'AspectRatio is a powerful tool for consistent layouts.\n',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.black),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
