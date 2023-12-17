import 'package:flutter/material.dart';
import '../../../utils/constants/colors.dart';
import '../../../utils/constants/enums.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/constants/texts.dart';
import '../images/circular_image.dart';
import '../texts/brand_title_verified.dart';
import 'circular_shape.dart';

class BrandCard extends StatelessWidget {
  const BrandCard({super.key, required this.brandImage, required this.brandName, this.onPressed, this.totalProducts = 0});

  final String brandImage, brandName;
  final int totalProducts;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: ECircularShape(
        padding: const EdgeInsets.all(ESizes.sm),
        showBorder: true,
        backgroundColor: EColors.transparent,
        child: Row(
          children: [
            Flexible(child: ECircularImage(image: brandImage, backgroundColor: EColors.transparent)),
            const SizedBox(width: ESizes.spaceBtwItems / 2),
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BrandTitleVerified(title: brandName, brandTextSize: TextSize.medium, iconSize: IconSize.sm),
                  const SizedBox(height: ESizes.spaceBtwItems / 2),
                  Text(
                    '$totalProducts ${ETexts(AppLang.arb).brandProducts()}',
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    style: Theme.of(context).textTheme.labelMedium,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
