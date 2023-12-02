import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._(); // this means that constructor is private (we just want to use it as a string)

  static const _primaryLightColor = Colors.lightBlueAccent;

  static const _primaryDarkColor = Colors.lightGreenAccent;

  static final ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(
      seedColor: _primaryLightColor,
      brightness: Brightness.light,
    ),
  );
  static final ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(
      seedColor: _primaryDarkColor,
      brightness: Brightness.dark,
    ),
  );
}
