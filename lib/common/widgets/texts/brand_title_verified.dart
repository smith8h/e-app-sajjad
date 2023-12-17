import 'package:e_store/common/widgets/texts/brand_title.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../../../utils/constants/colors.dart';
import '../../../utils/constants/enums.dart';
import '../../../utils/constants/sizes.dart';

class BrandTitleVerified extends StatelessWidget {
  const BrandTitleVerified({
    required this.title,
    this.maxLines = 1,
    this.textColor,
    this.iconColor = EColors.secondary,
    this.brandTextSize = TextSize.small,
    this.iconSize = IconSize.sm,
    super.key,
  });

  final String title;
  final int maxLines;
  final Color? textColor, iconColor;
  final TextSize brandTextSize;
  final IconSize iconSize;

  @override
  Widget build(context) {
    return Row(
      children: [
        BrandTitle(
          title: title,
          brandTextSize: brandTextSize,
          color: textColor,
          maxLines: maxLines,
        ),
        const SizedBox(width: ESizes.xs),
        Icon(Iconsax.verify5,
            color: iconColor,
            size: iconSize == IconSize.xs
                ? ESizes.iconXs
                : iconSize == IconSize.sm
                    ? ESizes.iconSm
                    : iconSize == IconSize.md
                        ? ESizes.iconMd
                        : ESizes.iconLg),
      ],
    );
  }
}
