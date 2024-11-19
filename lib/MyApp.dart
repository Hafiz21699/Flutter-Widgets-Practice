import 'package:flutter/material.dart';
import 'package:stack_practice/animated_container.dart';
import 'package:stack_practice/bottom_&_modalbottom_sheet.dart';
import 'package:stack_practice/daggablescrollablesheet.dart';
import 'package:stack_practice/expansiontile.dart';
import 'package:stack_practice/popupmenubutton.dart';
import 'package:stack_practice/time_picker.dart';


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
      home: const AnimatedContainerDemo(),
    );
  }
}
