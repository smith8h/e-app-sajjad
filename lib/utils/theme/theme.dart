import 'custom/text_theme.dart';
import 'package:flutter/material.dart';
import 'custom/button_theme.dart';

class ETheme {
  ETheme._();

  static ThemeData light = ThemeData(
    useMaterial3: true,
    fontFamily: 'sans',
    brightness: Brightness.light,
    primaryColor: const Color(0xFF6A87E3),
    scaffoldBackgroundColor: Colors.white,
    textTheme: ETextTheme.light,
    elevatedButtonTheme: EButtonTheme.light,
  );

  static ThemeData dark = ThemeData(
    useMaterial3: true,
    fontFamily: 'sans',
    brightness: Brightness.dark,
    primaryColor: const Color(0xFF6A87E3),
    scaffoldBackgroundColor: Colors.black,
    textTheme: ETextTheme.dark,
    elevatedButtonTheme: EButtonTheme.dark,
  );
}
