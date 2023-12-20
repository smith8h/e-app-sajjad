import 'package:e_store/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import '../../../utils/constants/colors.dart';
import '../../../utils/constants/enums.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/constants/texts.dart';
import '../images/circular_image.dart';
import '../texts/brand_title_verified.dart';
import 'circular_shape.dart';

class BrandCard extends StatelessWidget {
  const BrandCard({
    super.key,
    required this.brandImage,
    required this.brandName,
    this.onPressed,
    this.totalProducts = 0,
    this.showBorder = true,
  });

  final String brandImage, brandName;
  final int totalProducts;
  final bool showBorder;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    final dark = EHelperFunctions.isDarkMode();

    return GestureDetector(
      onTap: onPressed,
      child: ECircularShape(
        padding: const EdgeInsets.all(ESizes.sm),
        showBorder: showBorder,
        backgroundColor: EColors.transparent,
        child: Row(
          children: [
            Flexible(
                child: ECircularImage(
              image: brandImage,
              backgroundColor: EColors.transparent,
              overlayColor: dark ? EColors.white : EColors.black,
            )),
            const SizedBox(width: ESizes.spaceBtwItems / 2),
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BrandTitleVerified(title: brandName, brandTextSize: TextSize.medium, iconSize: IconSize.sm),
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
