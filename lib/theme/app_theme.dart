import 'package:flutter/material.dart';

class AppTheme {
  static final lightTheme = ThemeData(
    fontFamily: 'Apple SD Gothic Neo',
    brightness: Brightness.light,
    textTheme: const TextTheme(
      bodyLarge: TextStyle(fontSize: 24),
      headlineLarge: TextStyle(
        color: Colors.white,
        fontSize: 48,
        fontWeight: FontWeight.w900,
      ),
    ),
  );
}
