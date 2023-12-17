import 'package:e_store/common/styles/shadow_styles.dart';
import 'package:e_store/common/widgets/containers/rounded_image.dart';
import 'package:e_store/utils/constants/colors.dart';
import 'package:e_store/utils/constants/image_strings.dart';
import 'package:e_store/utils/constants/sizes.dart';
import 'package:e_store/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../buttons/circular_icon.dart';
import '../texts/product_price.dart';
import '../texts/product_title_text.dart';
import 'circular_shape.dart';

class VerticalProductCard extends StatelessWidget {
  const VerticalProductCard({
    required this.productImage,
    required this.productName,
    required this.productBrand,
    required this.productPrice,
    this.productNewPrice,
    this.discount = 0,
    this.imageHeight,
    this.imageRadius = ESizes.productImageRadius,
    this.cardRadius = ESizes.productImageRadius,
    this.productCurrency = '\$',
    this.largePrice = true,
    this.lineThroughPrice = false,
    this.onTap,
    this.onHeartPressed,
    this.onAddPressed,
    super.key,
  });

  final double? imageHeight, imageRadius, cardRadius;
  final int? discount;
  final String productImage, productName, productBrand, productPrice, productCurrency;
  final String? productNewPrice;
  final bool? largePrice, lineThroughPrice;
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
          boxShadow: [EShadowStyles.productShadow],
        ),
        child: Column(
          children: [
            ECircularShape(
              radius: imageRadius,
              padding: const EdgeInsets.all(ESizes.sm),
              backgroundColor: dark ? EColors.bgDark : EColors.bgLight,
              child: Stack(
                children: [
                  // product image
                  RoundedImage(
                    height: imageHeight,
                    width: double.infinity,
                    image: productImage,
                    applyImageRadius: true,
                  ),
                  // discount text
                  if (discount! > 0)
                    Positioned(
                      top: 10,
                      left: 0,
                      child: ECircularShape(
                        radius: ESizes.sm,
                        backgroundColor: EColors.secondary.withOpacity(.8),
                        padding: const EdgeInsets.symmetric(horizontal: ESizes.sm, vertical: ESizes.xs),
                        child: Text('$discount%', style: Theme.of(context).textTheme.labelLarge!.apply(color: EColors.white)),
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
                          overflow: TextOverflow.ellipsis, maxLines: 1, style: Theme.of(context).textTheme.labelMedium),
                      const SizedBox(width: ESizes.sm),
                      const Icon(Iconsax.verify5, color: EColors.secondary, size: ESizes.iconXs),
                    ],
                  ),
                ),
                // const SizedBox(height: ESizes.xs),
              ],
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // product price
                Padding(
                  padding: const EdgeInsets.only(right: ESizes.sm),
                  child: ProductPriceText(
                    currency: productCurrency,
                    price: productPrice,
                    newPrice: productNewPrice,
                    isLarge: largePrice!,
                    lineThrough: lineThroughPrice!,
                  ),
                ),
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
          ],
        ),
      ),
    );
  }
}

class HorizontalProductCard extends StatelessWidget {
  const HorizontalProductCard({
    required this.productImage,
    required this.productName,
    required this.productBrand,
    required this.productPrice,
    this.productNewPrice,
    this.discount = 0,
    this.imageHeight,
    this.imageWidth = 100,
    this.imageRadius = ESizes.productImageRadius,
    this.cardRadius = ESizes.productImageRadius,
    this.productCurrency = '\$',
    this.largePrice = true,
    this.lineThroughPrice = false,
    this.onTap,
    this.onHeartPressed,
    this.onAddPressed,
    super.key,
  });

  final double? imageHeight, imageWidth, imageRadius, cardRadius;
  final int? discount;
  final String productImage, productName, productBrand, productPrice, productCurrency;
  final String? productNewPrice;
  final bool? largePrice, lineThroughPrice;
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
          boxShadow: [EShadowStyles.productShadow],
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            ECircularShape(
              radius: imageRadius,
              padding: const EdgeInsets.all(ESizes.sm),
              backgroundColor: dark ? EColors.bgDark : EColors.bgLight,
              child: Stack(
                children: [
                  // product image
                  RoundedImage(
                    height: imageHeight,
                    width: imageWidth,
                    image: productImage,
                    applyImageRadius: true,
                  ),
                  // discount text
                  if (discount! > 0)
                    Positioned(
                      top: 0,
                      left: 0,
                      child: ECircularShape(
                        radius: ESizes.sm,
                        backgroundColor: EColors.secondary.withOpacity(.8),
                        padding: const EdgeInsets.symmetric(horizontal: ESizes.sm, vertical: ESizes.xs),
                        child: Text('$discount%', style: Theme.of(context).textTheme.labelLarge!.apply(color: EColors.white)),
                      ),
                    ),
                  // heart button
                  Positioned(
                      right: 0,
                      child: CircularImage(
                        icon: Iconsax.heart5,
                        size: 18,
                        height: 34,
                        width: 34,
                        color: Colors.red,
                        onPressed: onHeartPressed,
                      ))
                ],
              ),
            ),
            const SizedBox(width: ESizes.spaceBtwItems / 2),
            Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // product title
                      Padding(
                        padding: const EdgeInsets.only(left: ESizes.sm),
                        child: ProductTitleText(productName, smallSize: true),
                      ),
                      const SizedBox(height: ESizes.sm),
                      // product brand
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: ESizes.sm),
                        child: Row(
                          children: [
                            Text(productBrand,
                                overflow: TextOverflow.ellipsis, maxLines: 1, style: Theme.of(context).textTheme.labelMedium),
                            const SizedBox(width: ESizes.sm),
                            const Icon(Iconsax.verify5, color: EColors.secondary, size: ESizes.iconXs),
                          ],
                        ),
                      ),
                    ],
                  ),
                // const Spacer(),
                // price
                Padding(
                  padding: const EdgeInsets.only(right: ESizes.sm),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // product price
                      ProductPriceText(
                        currency: productCurrency,
                        price: productPrice,
                        newPrice: productNewPrice,
                        isLarge: largePrice!,
                        lineThrough: lineThroughPrice!,
                      ),
                      const SizedBox(width: ESizes.sm + 4),
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
                      ),
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
