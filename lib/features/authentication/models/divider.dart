import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';

class EDivider extends StatelessWidget {
  final bool darkMode;
  final String text;

  const EDivider({super.key, required this.darkMode, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
          child: Divider(color: darkMode ? EColors.darkerGrey : EColors.darkGrey, thickness: 0.5, indent: 60, endIndent: 5),
        ),
        Text(text, style: Theme.of(context).textTheme.bodySmall),
        Flexible(
          child: Divider(color: darkMode ? EColors.darkerGrey : EColors.darkGrey, thickness: 0.5, indent: 5, endIndent: 60),
        ),
      ],
    );
  }
}
