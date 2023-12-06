import 'package:flutter/material.dart';

class BorderButton extends StatelessWidget {
  const BorderButton({
    super.key,
    required this.text,
    required this.onClick,
  });

  final String text;
  final VoidCallback onClick;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: OutlinedButton(
        onPressed: onClick,
        child: Text(text),
      ),
    );
  }
}