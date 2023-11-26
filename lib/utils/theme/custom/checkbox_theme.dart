import 'package:flutter/material.dart';

class ECheckBoxTheme {
  ECheckBoxTheme._();

  static CheckboxThemeData light = CheckboxThemeData(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
    checkColor:
        MaterialStateProperty.resolveWith((states) => states.contains(MaterialState.selected) ? Colors.white : Colors.black),
    fillColor: MaterialStateProperty.resolveWith(
        (states) => states.contains(MaterialState.selected) ? const Color(0xFF6A87E3) : Colors.transparent),
  );

  static CheckboxThemeData dark = CheckboxThemeData(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
    checkColor:
        MaterialStateProperty.resolveWith((states) => states.contains(MaterialState.selected) ? Colors.white : Colors.black),
    fillColor: MaterialStateProperty.resolveWith(
        (states) => states.contains(MaterialState.selected) ? const Color(0xFF6A87E3) : Colors.transparent),
  );
}
