import 'package:darzee_web/screen/homescreen/homescreen.dart';
import 'package:darzee_web/utils/theme/my_theme.dart';
import 'package:flutter/material.dart';

/// The code sets up a basic Flutter app with a home page and a theme.

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: MyTheme.lightTheme(context),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
    );
  }
}

/// This is a stateless widget representing the home page of an app that returns a HomeScreen widget.
class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const HomeScreen();
  }
}
