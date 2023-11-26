import 'package:e_store/utils/theme/custom/appbar_theme.dart';
import 'package:e_store/utils/theme/custom/bottom_sheet_theme.dart';
import 'package:e_store/utils/theme/custom/checkbox_theme.dart';
import 'package:e_store/utils/theme/custom/chip_theme.dart';

import 'custom/text_theme.dart';
import 'package:flutter/material.dart';
import 'custom/elevated_button_theme.dart';

class ETheme {
  ETheme._();

  static ThemeData light = ThemeData(
    useMaterial3: true,
    fontFamily: 'sans',
    brightness: Brightness.light,
    primaryColor: const Color(0xFF6A87E3),
    scaffoldBackgroundColor: Colors.white,
    textTheme: ETextTheme.light,
    elevatedButtonTheme: EElevatedButtonTheme.light,
    appBarTheme: EAppBarTheme.light,
    bottomSheetTheme: EBottomSheetTheme.light,
    checkboxTheme: ECheckBoxTheme.light,
    chipTheme: EChipTheme.light,

  );

  static ThemeData dark = ThemeData(
    useMaterial3: true,
    fontFamily: 'sans',
    brightness: Brightness.dark,
    primaryColor: const Color(0xFF6A87E3),
    scaffoldBackgroundColor: Colors.black,
    textTheme: ETextTheme.dark,
    elevatedButtonTheme: EElevatedButtonTheme.dark,
    appBarTheme: EAppBarTheme.dark,
    bottomSheetTheme: EBottomSheetTheme.dark,
    checkboxTheme: ECheckBoxTheme.dark,
    chipTheme: EChipTheme.dark,

  );
}
