import 'package:flutter/material.dart';
import 'package:stack_practice/aspect_ratio.dart';
import 'package:stack_practice/clippath_task.dart';
import 'package:stack_practice/constrained_box.dart';
import 'package:stack_practice/drawer_&_bnb.dart';
import 'package:stack_practice/fitted%20box.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        useMaterial3: true,
      ),
      home: AspectRatioExample(),
    );
  }
}
