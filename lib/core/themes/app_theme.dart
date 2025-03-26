import 'package:flutter/material.dart';
import 'package:mealtracker/core/themes/colors_manger.dart';

class AppTheme {
  static final lightTheme = ThemeData(
    primaryColor: ColorsManger.primary,
    colorScheme: ColorScheme.fromSeed(
      seedColor: ColorsManger.primary,
      brightness: Brightness.light,
    ),
    textTheme: TextTheme(
      titleLarge: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
        color: ColorsManger.text,
      ),
      bodyMedium: TextStyle(fontSize: 14, color: ColorsManger.text),
    ),
  );
}
