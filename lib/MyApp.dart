import 'package:flutter/material.dart';
import 'package:stack_practice/listview_&_listviewbuilder.dart';
import 'package:stack_practice/listviewseparator.dart';

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
    home: ListViewSeparator(),
    );
  }
}
