import 'package:flutter/material.dart';

class EColors {
  EColors._();

  // App Basic Colors
  static const primary = purple;
  static const secondary = blue;
  static const accent = purple;

  // LinearGradient
  static Gradient linerGradient = const LinearGradient(
    begin: Alignment(0.0, 0.0),
    end: Alignment(0.707, -0.707),
    colors: [
      Color(0xffff9a9e),
      Color(0xfffad0c4),
      Color(0xfffad0c4),
    ],
  );

  // text colors
  static const textPrimary = Colors.white; // Color(0xFF333333);
  static const textSecondary = Colors.white;
  static const textWhite = Colors.white;

  // Background Colors
  static const bgLight = Color(0xFFF6F6F6);
  static const bgDark = Color(0xFF232323);
  static const primaryBackground = Color(0xFFF3F5FF);

  // Background Container Colors
  static const lightContainer = Color(0xFFF6F6F6);
  static final darkContainer = EColors.white.withOpacity(0.1);

  // Button Colors
  static const buttonPrimary = primary;
  static const buttonSecondary = pink;
  static const buttonDisabled = Color(0xFFC4C4C4);

  // Border Colors
  static const borderPrimary = Color(0xFFD9D9D9);
  static const borderSecondary = Color(0xFFE6E6E6);

  // Error and
  static const error = Color(0xFFD32F2F);
  static const success = Color(0xFF388E3C);
  static const warning = Color(0xFFF57C00);
  static const info = Color(0xFF1976D2);

  // neutral colors
  static const transparent = Colors.transparent;
  static const block = Color(0xFF232323);
  static const darkerGrey = Color(0xFF4F4F4F);
  static const darkGrey = Color(0xFF939393);
  static const grey = Color(0xFFE0E0E0);
  static const softGrey = Color(0xFFF4F4F4);
  static const lightGrey = Color(0xFFF9F9F9);
  static const white = Color(0xFFFFFFFF);

  // App theme colors
  static const purple = Color(0xFFb25eff);
  static const blue = Color(0xFF09a9ff);
  static const pink = Color(0xFFff9db8);
}
