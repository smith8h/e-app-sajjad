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
    this.onTap,
    this.padding = const EdgeInsets.symmetric(horizontal: ESizes.defaultSpace),
  });

  final String text;
  final IconData? icon;
  final bool showBackground, showBorder;
  final VoidCallback? onTap;
  final EdgeInsetsGeometry   padding;

  @override
  Widget build(BuildContext context) {
    final dark = EHelperFunctions.isDarkMode();

    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: padding,
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
              Icon(icon, color: EColors.darkGrey),
              const SizedBox(width: ESizes.spaceBtwItems),
              Text(text, style: Theme.of(context).textTheme.bodySmall)
            ],
          ),
        ),
      ),
    );
  }
}