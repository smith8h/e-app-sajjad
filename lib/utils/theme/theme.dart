import 'package:e_store/utils/constants/colors.dart';
import 'custom/appbar_theme.dart';
import 'custom/bottom_sheet_theme.dart';
import 'custom/checkbox_theme.dart';
import 'custom/chip_theme.dart';
import 'custom/outlined_button_theme.dart';
import 'custom/text_field_theme.dart';
import 'custom/text_theme.dart';
import 'package:flutter/material.dart';
import 'custom/elevated_button_theme.dart';

class ETheme {
  ETheme._();

  static ThemeData light = ThemeData(
    useMaterial3: true,
    fontFamily: 'sans',
    brightness: Brightness.light,
    primaryColor: EColors.primary,
    scaffoldBackgroundColor: EColors.bgLight,
    textTheme: ETextTheme.light,
    elevatedButtonTheme: EElevatedButtonTheme.light,
    appBarTheme: EAppBarTheme.light,
    bottomSheetTheme: EBottomSheetTheme.light,
    checkboxTheme: ECheckBoxTheme.light,
    chipTheme: EChipTheme.light,
    outlinedButtonTheme: EOutlinedButtonTheme.light,
    inputDecorationTheme: ETextFieldTheme.light,
  );

  static ThemeData dark = ThemeData(
    useMaterial3: true,
    fontFamily: 'sans',
    brightness: Brightness.dark,
    primaryColor:  EColors.primary,
    scaffoldBackgroundColor: EColors.bgDark,
    textTheme: ETextTheme.dark,
    elevatedButtonTheme: EElevatedButtonTheme.dark,
    appBarTheme: EAppBarTheme.dark,
    bottomSheetTheme: EBottomSheetTheme.dark,
    checkboxTheme: ECheckBoxTheme.dark,
    chipTheme: EChipTheme.dark,
    outlinedButtonTheme: EOutlinedButtonTheme.dark,
    inputDecorationTheme: ETextFieldTheme.dark,
  );
}
