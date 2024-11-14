// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MaterialAppWidgetDemo extends StatelessWidget {
  const MaterialAppWidgetDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
          useMaterial3: true,
        ),
        home: Scaffold(
          backgroundColor: Colors.teal.shade100,
          body: Center(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text(
                'The MaterialApp widget in Flutter is the top-level widget that provides material design-specific functionality and is essential for building a Material-based app. It wraps the entire app and is typically the root widget in a Flutter project. It contains various properties for configuring aspects such as the theme, home screen, routes, and localization.\n Key Properties of MaterialApp:\n- title: Sets the title displayed in the apps header\n- debugShowCheckedModeBanner: Enables or disables the debug mode banner.\n- theme: Defines the theme for the app, including color scheme, typography, and other visual elements.\n- home: Specifies the widget that should be displayed when the app is launched.\n- routes: Configures the routes for navigation within the app.\n- localizationsDelegates: Specifies the localization delegates for handling different',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ));
  }
}
