import 'package:flutter/material.dart';
import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/helpers/helper_functions.dart';
import 'brand_card.dart';
import 'circular_shape.dart';

class BrandShowcase extends StatelessWidget {
  const BrandShowcase({
    required this.brandName,
    required this.brandImage,
    required this.brandProductsCount,
    required this.items,
    this.isNetworkImage = false,
    super.key,
  });

  final String brandName, brandImage;
  final int brandProductsCount;
  final List<String> items;
  final bool isNetworkImage;

  @override
  Widget build(BuildContext context) {
    return ECircularShape(
      showBorder: true,
      backgroundColor: EColors.transparent,
      margin: const EdgeInsets.only(bottom: ESizes.spaceBtwItems),
      padding: const EdgeInsets.all(ESizes.md),
      child: Column(
        children: [
          BrandCard(brandImage: brandImage, brandName: brandName, totalProducts: brandProductsCount, showBorder: false),
          Row(children: items.map((e) => topProducts(e)).toList()),
        ],
      ),
    );
  }

  Expanded topProducts(String item) {
    return Expanded(
      child: ECircularShape(
        height: 100,
        backgroundColor: EHelperFunctions.isDarkMode() ? EColors.darkerGrey : EColors.white,
        margin: const EdgeInsets.only(right: ESizes.sm),
        padding: const EdgeInsets.all(ESizes.md),
        child: Image(
          image: isNetworkImage ? NetworkImage(item) : AssetImage(item) as ImageProvider,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
