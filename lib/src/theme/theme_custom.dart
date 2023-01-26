import 'package:flutter/material.dart';

ThemeData lightTheme = ThemeData(
  primaryColor: Colors.white,
  scaffoldBackgroundColor: Colors.white,
  appBarTheme: const AppBarTheme(
    elevation: 0,
    backgroundColor: Colors.white,
    foregroundColor: Colors.black,
  ),
  textTheme: const TextTheme(
    headline1: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
    headline2: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
    headline3: TextStyle(fontSize: 10),
    headline4: TextStyle(fontSize: 10, color: Colors.grey),
    headline5: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
    headline6: TextStyle(fontSize: 14),
    subtitle1: TextStyle(fontSize: 12, color: Colors.grey),
    subtitle2: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
    button: TextStyle(
        fontWeight: FontWeight.bold, fontSize: 20, color: Colors.white),
  ),
);
