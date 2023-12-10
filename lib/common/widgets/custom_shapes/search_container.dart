import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/device/device_utility.dart';
import '../../../utils/helpers/helper_functions.dart';

class SearchContainer extends StatelessWidget {
  const SearchContainer({
    super.key,
    required this.text,
    this.icon = Iconsax.search_normal,
    this.showBackground = true,
    this.showBorder = true,
  });

  final String text;
  final IconData? icon;
  final bool showBackground, showBorder;

  @override
  Widget build(BuildContext context) {
    final dark = EHelperFunctions.isDarkMode();

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: ESizes.spaceBtwItems),
      child: Container(
        width: EDeviceUtils.getScreenWidth(),
        padding: const EdgeInsets.all(ESizes.md),
        decoration: BoxDecoration(
          color: showBackground
              ? dark
              ? EColors.bgDark
              : EColors.bgLight
              : EColors.transparent,
          borderRadius: BorderRadius.circular(ESizes.cardRadiusLg),
          border: showBorder ? Border.all(color: EColors.grey) : null,
        ),
        child: Row(
          children: [
            Icon(icon, color: EColors.darkerGrey),
            const SizedBox(width: ESizes.spaceBtwItems),
            Text(text, style: Theme.of(context).textTheme.bodySmall)
          ],
        ),
      ),
    );
  }
}