import 'package:flutter/material.dart';

class AppTheme {
  static final lightTheme = ThemeData(
    primarySwatch: Colors.blue,
    brightness: Brightness.light,
    textTheme: const TextTheme(
      titleLarge: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      bodyMedium: TextStyle(fontSize: 14),
    ),
  );

  static final darkTheme = ThemeData(
    primarySwatch: Colors.blue,
    brightness: Brightness.dark,
  );
}
