import 'package:flutter/material.dart';

class EditText extends StatelessWidget {
  final IconData prefixIcon;
  final IconData? suffixIcon;
  final String label;
  final bool expands, obscureText;
  final TextEditingController? controller;

  const EditText({
    super.key,
    required this.prefixIcon,
    required this.label,
    this.suffixIcon,
    this.expands = false,
    this.obscureText = false,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      expands: expands,
      obscureText: obscureText,
      decoration: InputDecoration(
        prefixIcon: Icon(prefixIcon),
        labelText: label,
        suffixIcon: Icon(suffixIcon),
      ),
    );
  }
}
