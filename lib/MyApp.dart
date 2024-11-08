import 'package:flutter/material.dart';
import 'package:stack_practice/clip_path.dart';
import 'package:stack_practice/daggablescrollablesheet.dart';
import 'package:stack_practice/inflation_calculator.dart';
import 'package:stack_practice/wrap_widget.dart';

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
    home:  ClipPathDemo(),
    );
  }
}
