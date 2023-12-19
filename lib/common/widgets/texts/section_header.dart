import 'package:flutter/material.dart';

import '../../../utils/constants/enums.dart';
import '../../../utils/constants/texts.dart';

class SectionHeader extends StatelessWidget {
  const SectionHeader({
    super.key,
    required this.title,
    this.showButton = true,
    this.titleColor,
    this.onButtonTap,
  });

  final String title;
  final Color? titleColor;
  final bool showButton;
  final VoidCallback? onButtonTap;

  @override
  Widget build(context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.headlineSmall!.apply(color: titleColor),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        // todo : change language
        if (showButton) TextButton(onPressed: onButtonTap, child: Text(ETexts(AppLang.arb).viewAll())),
      ],
    );
  }
}