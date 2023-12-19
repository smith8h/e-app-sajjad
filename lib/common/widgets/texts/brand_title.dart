import 'package:e_store/utils/constants/enums.dart';
import 'package:flutter/material.dart';

class BrandTitle extends StatelessWidget {
  const BrandTitle({
    required this.title,
    this.brandTextSize = TextSize.small,
    this.color,
    this.maxLines = 1,
    this.textAlign = TextAlign.center,
    super.key,
  });

  final String title;
  final TextSize brandTextSize;
  final Color? color;
  final int maxLines;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: textAlign,
      overflow: TextOverflow.ellipsis,
      maxLines: maxLines,
      style: brandTextSize == TextSize.small
          ? Theme.of(context).textTheme.labelMedium!.apply(color: color)
          : brandTextSize == TextSize.medium
              ? Theme.of(context).textTheme.bodyLarge!.apply(color: color)
              : brandTextSize == TextSize.large
                  ? Theme.of(context).textTheme.titleLarge!.apply(color: color)
                  : Theme.of(context).textTheme.bodyMedium!.apply(color: color),
    );
  }
}
