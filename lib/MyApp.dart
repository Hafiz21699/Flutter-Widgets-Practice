import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:stack_practice/card_widget.dart';
import 'package:stack_practice/fractionallysizedbox_widget.dart';
import 'package:stack_practice/spacer.dart';
import 'package:stack_practice/transform_widget.dart';

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
      home: CardWidgetDemo(),
    );
  }
}
