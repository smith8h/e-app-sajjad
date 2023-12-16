import 'package:e_store/common/styles/shadow_styles.dart';
import 'package:e_store/common/widgets/containers/rounded_image.dart';
import 'package:e_store/utils/constants/colors.dart';
import 'package:e_store/utils/constants/image_strings.dart';
import 'package:e_store/utils/constants/sizes.dart';
import 'package:e_store/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../buttons/circular_icon.dart';
import '../texts/product_title_text.dart';
import 'circular_shape.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    required this.productName,
    required this.productBrand,
    required this.productPrice,
    this.discount = 0,
    this.imageHeight,
    this.imageRadius = ESizes.productImageRadius,
    this.cardRadius = ESizes.productImageRadius,
    this.currency = '\$',
    this.onTap,
    this.onHeartPressed,
    this.onAddPressed,
    super.key,
  });

  final double? imageHeight, imageRadius, cardRadius;
  final int? discount;
  final String productName, productBrand, productPrice, currency;
  final VoidCallback? onTap, onHeartPressed, onAddPressed;

  @override
  Widget build(BuildContext context) {
    final dark = EHelperFunctions.isDarkMode();

    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          color: dark ? EColors.darkerGrey : EColors.white,
          borderRadius: BorderRadius.circular(cardRadius!),
          boxShadow: [EShadowStyles.verticalProductShadow],
        ),
        child: Column(
          children: [
            ECircularShape(
              height: imageHeight,
              width: double.infinity,
              radius: imageRadius,
              padding: const EdgeInsets.all(ESizes.sm),
              backgroundColor: dark ? EColors.bgDark : EColors.bgLight,
              child: Stack(
                children: [
                  // product image
                  const RoundedImage(image: EImages.product, applyImageRadius: true),
                  // discount text
                  if (discount! > 0)
                    Positioned(
                      top: 10,
                      left: 0,
                      child: ECircularShape(
                        radius: ESizes.sm,
                        backgroundColor: EColors.secondary.withOpacity(.8),
                        padding: const EdgeInsets.symmetric(horizontal: ESizes.sm, vertical: ESizes.xs),
                        child: Text('$discount%', style: Theme
                            .of(context)
                            .textTheme
                            .labelLarge!
                            .apply(color: EColors.white)),
                      ),
                    ),
                  // heart button
                  Positioned(right: 0, child: CircularImage(icon: Iconsax.heart5, color: Colors.red, onPressed: onHeartPressed))
                ],
              ),
            ),
            const SizedBox(height: ESizes.spaceBtwItems / 2),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // product name
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: ESizes.sm),
                  child: ProductTitleText(productName, smallSize: true),
                ),
                const SizedBox(height: ESizes.sm),
                // product brand name
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: ESizes.sm),
                  child: Row(
                    children: [
                      Text(productBrand,
                          overflow: TextOverflow.ellipsis, maxLines: 1, style: Theme
                              .of(context)
                              .textTheme
                              .labelMedium),
                      const SizedBox(width: ESizes.sm),
                      const Icon(Iconsax.verify5, color: EColors.secondary, size: ESizes.iconXs),
                    ],
                  ),
                ),
                const SizedBox(height: ESizes.xs),
                Padding(
                  padding: const EdgeInsets.only(right: ESizes.sm),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // product price
                      Text('$currency$productPrice', maxLines: 1, style: Theme
                          .of(context)
                          .textTheme
                          .headlineMedium),
                      // add to cart button
                      GestureDetector(
                        onTap: onAddPressed,
                        child: Container(
                          decoration: BoxDecoration(
                            color: dark ? EColors.bgLight : EColors.bgDark,
                            borderRadius: const BorderRadius.only(
                              topRight: Radius.circular(ESizes.cardRadiusMd),
                              bottomLeft: Radius.circular(ESizes.productImageRadius),
                            ),
                          ),
                          child: SizedBox(
                            width: ESizes.iconLg * 1.2,
                            height: ESizes.iconLg * 1.2,
                            child: Center(child: Icon(Iconsax.add, color: dark ? EColors.bgDark : EColors.bgLight)),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
