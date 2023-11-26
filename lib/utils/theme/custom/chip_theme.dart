import 'package:flutter/material.dart';

class EChipTheme {
  EChipTheme._();

  static ChipThemeData light = ChipThemeData(
    disabledColor: Colors.grey.withOpacity(0.4),
    labelStyle: const TextStyle(color: Colors.black),
    selectedColor: const Color(0xFF6A87E3),
    padding: const EdgeInsets.all(12),
    checkmarkColor: Colors.white,
  );

  static ChipThemeData dark = const ChipThemeData(
    disabledColor: Colors.grey,
    labelStyle: TextStyle(color: Colors.white),
    selectedColor: Color(0xFF6A87E3),
    padding: EdgeInsets.all(12),
    checkmarkColor: Colors.white,
  );
}