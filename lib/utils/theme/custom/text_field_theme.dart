import 'package:flutter/material.dart';

class ETextFieldTheme {
  ETextFieldTheme._();

  static InputDecorationTheme light = InputDecorationTheme(
    errorMaxLines: 3,
    prefixIconColor: Colors.grey,
    suffixIconColor: Colors.grey,
    labelStyle: const TextStyle(fontSize: 14, color: Colors.black),
    hintStyle: const TextStyle(fontSize: 14, color: Colors.black),
    errorStyle: const TextStyle(fontStyle: FontStyle.normal),
    floatingLabelStyle: TextStyle(color: Colors.black.withOpacity(0.8)),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(14),
      borderSide: const BorderSide(width: 1, color: Colors.grey),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(14),
      borderSide: const BorderSide(width: 1, color: Colors.grey),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(14),
      borderSide: const BorderSide(width: 1, color: Colors.black12),
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(14),
      borderSide: const BorderSide(width: 1, color: Colors.red),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(14),
      borderSide: const BorderSide(width: 1, color: Colors.orange),
    ),
  );

  static InputDecorationTheme dark = InputDecorationTheme(
    errorMaxLines: 3,
    prefixIconColor: Colors.grey.withOpacity(0.7),
    suffixIconColor: Colors.grey.withOpacity(0.7),
    labelStyle: const TextStyle(fontSize: 14, color: Colors.white),
    hintStyle: const TextStyle(fontSize: 14, color: Colors.white),
    errorStyle: const TextStyle(fontStyle: FontStyle.normal),
    floatingLabelStyle: TextStyle(color: Colors.white.withOpacity(0.8)),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(14),
      borderSide: BorderSide(width: 1, color: Colors.grey.withOpacity(0.7)),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(14),
      borderSide: BorderSide(width: 1, color: Colors.grey.withOpacity(0.7)),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(14),
      borderSide: BorderSide(width: 1, color: Colors.white.withOpacity(0.8)),
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(14),
      borderSide: const BorderSide(width: 1, color: Colors.red),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(14),
      borderSide: const BorderSide(width: 1, color: Colors.orange),
    ),
  );
}
