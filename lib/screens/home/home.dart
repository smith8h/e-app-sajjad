import 'package:e_store/common/widgets/containers/app_bar.dart';
import 'package:e_store/common/widgets/containers/product_card.dart';
import 'package:e_store/screens/home/widgets/promo_slider.dart';
import 'package:e_store/utils/constants/colors.dart';
import 'package:e_store/utils/constants/enums.dart';
import 'package:e_store/utils/constants/image_strings.dart';
import 'package:e_store/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:sbadgeview/sbadgeview.dart';
import '../../common/widgets/containers/search_container.dart';
import '../../common/widgets/texts/section_header.dart';
import '../../common/widgets/home/categories.dart';
import '../../common/widgets/home/header.dart';
import '../../utils/constants/texts.dart';
import '../../utils/device/device_utility.dart';
import '../../utils/helpers/helper_functions.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final darkMode = EHelperFunctions.isDarkMode();
    EDeviceUtils.setDarkModeBarColors(darkMode);
    final texts = ETexts(AppLang.arb);

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            PrimaryHeaderContainer(
              child: Column(
                children: [
                  EAppBar(
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(texts.homeAppBarTitle(), style: Theme.of(context).textTheme.labelMedium!.apply(color: EColors.grey)),
                        Text(texts.homeAppBarSubtitle(),
                            style: Theme.of(context).textTheme.headlineSmall!.apply(color: EColors.white)),
                      ],
                    ),
                    actions: [
                      SBadgeView(
                        content: IconButton(onPressed: () {}, icon: const Icon(Iconsax.shopping_bag, color: EColors.white)),
                        badgeCount: 312,
                        badgePadding: const EdgeInsets.symmetric(horizontal: 5, vertical: 2),
                      ),
                    ],
                  ),
                  const SizedBox(height: ESizes.spaceBtwSections),
                  SearchContainer(text: texts.search(), showBorder: false, onTap: () {}),
                  const SizedBox(height: ESizes.spaceBtwSections),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: ESizes.defaultSpace),
                    child: Column(
                      children: [
                        SectionHeader(title: texts.popularCategories(), titleColor: EColors.bgLight, showButton: false),
                        const SizedBox(height: ESizes.spaceBtwItems),
                        const HomeCategories(),
                      ],
                    ),
                  ),
                  const SizedBox(height: ESizes.defaultSpace),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(ESizes.spaceBtwItems),
              child: Column(
                children: [
                  const PromoSlider(banners: [EImages.banner, EImages.banner], autoPlay: false),
                  const SizedBox(height: ESizes.spaceBtwItems),
                  SectionHeader(title: texts.popularProducts(), showButton: true, onButtonTap: () {}),
                  GridView.builder(
                    itemCount: 4,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: ESizes.gridViewSpacing,
                      crossAxisSpacing: ESizes.gridViewSpacing,
                      mainAxisExtent: 262,
                    ),
                    itemBuilder: (_, index) => ProductCard(
                      productName: 'عطر زهرة الربيع للنساء',
                      productBrand: 'Loris',
                      productPrice: '4',
                      currency: 'د.ع',
                      imageHeight: 160, // height of card (imageSize + 102 for oneLine title) (imageSize + 120 for twoLine title)
                      onTap: () {},
                      onAddPressed: () {},
                      onHeartPressed: () {},
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
