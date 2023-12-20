import 'package:flutter/material.dart';

class BorderButton extends StatelessWidget {
  const   BorderButton({
    super.key,
    required this.text,
    this.textColor,
    required this.onClick,
  });

  final String text;
  final Color? textColor;
  final VoidCallback onClick;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: OutlinedButton(
        onPressed: onClick,
        child: Text(text, style: TextStyle(color: textColor)),
      ),
    );
  }
}