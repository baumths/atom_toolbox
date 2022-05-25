import 'package:flutter/material.dart';

abstract class AppTheme {
  static const primaryColor = Color(0xFF1D3461);

  static const consoleMessageColor = Color(0xFFFFFFFF);
  static const consoleCommandColor = Color(0xFF00C853);
  static const consoleErrorColor = Color(0xFFD50000);

  static ThemeData get themeData {
    return ThemeData(
      primaryColor: primaryColor,
      textTheme: const TextTheme(
        headline1: headline1,
      ),
    );
  }

  static const headline1 = TextStyle(
    color: Colors.white,
    fontSize: 48,
    fontWeight: FontWeight.w700,
    fontFamily: 'Merienda',
  );

  static const console = TextStyle(
    color: consoleCommandColor,
    fontFamily: 'Fira Code',
  );
}
