import 'package:flutter/material.dart';

var theme = ThemeData(
  primarySwatch: Colors.blue,
  visualDensity: VisualDensity.adaptivePlatformDensity,
  primaryColor: Color.fromARGB(255, 112, 106, 197),
  appBarTheme: AppBarTheme(
    color: Color.fromARGB(255, 112, 106, 197),
    textTheme: TextTheme(
      headline6: TextStyle(
        color: Colors.white,
        fontSize: 20,
        fontWeight: FontWeight.w600,
      ),
    ),
  ),
);
