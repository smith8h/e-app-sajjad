import 'package:flutter/material.dart';

import '../../utils/constants/colors.dart';
import '../../utils/constants/sizes.dart';
import '../../utils/helpers/helper_functions.dart';

class VerticalImageText extends StatelessWidget {
  const VerticalImageText({
    super.key,
    required this.image,
    required this.title,
    this.titleColor = EColors.white,
    this.imageBgColor,
    this.imageColor,
    this.onTap,
  });

  final String image, title;
  final Color? titleColor, imageBgColor, imageColor;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final dark = EHelperFunctions.isDarkMode();

    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: ESizes.spaceBtwItems / 2),
        child: Column(
          children: [
            Container(
              width: 50,
              height: 50,
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                color: imageBgColor ?? (dark ? EColors.bgDark : EColors.bgLight),
              ),
              child: Image(
                image: AssetImage(image),
                fit: BoxFit.cover,
                color: imageColor ?? (dark ? EColors.grey : EColors.darkerGrey),
              ),
            ),
            const SizedBox(height: ESizes.spaceBtwItems / 2),
            SizedBox(
              width: 50,
              child: Text(
                title,
                style: Theme.of(context).textTheme.labelMedium!.apply(color: titleColor),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
