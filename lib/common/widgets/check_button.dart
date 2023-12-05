import 'package:flutter/material.dart';


class CheckButton extends StatelessWidget {
  const CheckButton({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          value: true,
          onChanged: (isChecked) {},
        ),
        Text(text),
      ],
    );
  }
}

