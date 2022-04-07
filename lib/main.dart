import 'package:flutter/material.dart';
import 'package:flutter_frontpage/Theme/theme_data.dart';
import 'package:flutter_frontpage/Views/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Landing Page',
      theme: theme,
      home: const MyHomePage(title: 'Flutter Landing Home Page'),
    );
  }
}
