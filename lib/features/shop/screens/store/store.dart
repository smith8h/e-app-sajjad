import 'package:e_store/common/widgets/containers/app_bar.dart';
import 'package:e_store/common/widgets/containers/grid_view.dart';
import 'package:e_store/common/widgets/containers/tab_bar.dart';
import 'package:e_store/common/widgets/shop/category_tab.dart';
import 'package:e_store/common/widgets/texts/section_header.dart';
import 'package:e_store/utils/constants/enums.dart';
import 'package:e_store/utils/constants/image_strings.dart';
import 'package:e_store/utils/constants/sizes.dart';
import 'package:e_store/utils/constants/texts.dart';
import 'package:e_store/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:sbadgeview/sbadgeview.dart';
import '../../../../common/widgets/containers/brand_card.dart';
import '../../../../common/widgets/containers/brand_showcase.dart';
import '../../../../common/widgets/containers/product_card.dart';
import '../../../../common/widgets/containers/search_container.dart';
import '../../../../utils/constants/colors.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = EHelperFunctions.isDarkMode();
    final texts = ETexts(AppLang.arb);

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: EAppBar(
          title: Text(texts.shopAppBarTitle(), style: Theme.of(context).textTheme.headlineSmall),
          actions: [
            SBadgeView(
              content: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Iconsax.shopping_bag,
                ),
                color: dark ? EColors.bgLight : EColors.bgDark,
              ),
              badgeCount: 312,
              badgePadding: const EdgeInsets.symmetric(horizontal: 5, vertical: 2),
            ),
          ],
        ),
        body: NestedScrollView(
          headerSliverBuilder: (_, innerBoxIsScrolled) => [
            SliverAppBar(
                automaticallyImplyLeading: false,
                pinned: true,
                floating: true,
                backgroundColor: dark ? EColors.bgDark : EColors.bgLight,
                expandedHeight: 430,
                flexibleSpace: Padding(
                  padding: const EdgeInsets.all(ESizes.defaultSpace),
                  child: ListView(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      const SizedBox(height: ESizes.spaceBtwItems),
                      SearchContainer(text: texts.search(), showBackground: false, padding: EdgeInsets.zero, onTap: () {}),
                      const SizedBox(height: ESizes.spaceBtwSections),
                      SectionHeader(title: texts.shopBrands(), onButtonTap: () {}),
                      const SizedBox(height: ESizes.spaceBtwItems / 2),
                      EGridView(
                        itemCount: 4,
                        childHeight: 80,
                        builder: (_, index) => BrandCard(
                          brandImage: EImages.brand,
                          brandName: texts.brand,
                          totalProducts: 10,
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                ),
                bottom: const ETabBar(tabs: ['Cosmetics', 'Perfumes'])),
          ],
          body: TabBarView(
            children: [
              CategoryTab(
                showcases: [
                  BrandShowcase(
                    brandName: texts.brand,
                    brandImage: EImages.brand,
                    brandProductsCount: 20,
                    items: const [EImages.brand, EImages.brand, EImages.brand],
                    isNetworkImage: false,
                  ),
                  BrandShowcase(
                    brandName: texts.brand,
                    brandImage: EImages.brand,
                    brandProductsCount: 20,
                    items: const [EImages.brand, EImages.brand, EImages.brand],
                    isNetworkImage: false,
                  ),
                ],
                products: [
                  VerticalProductCard(
                    productImage: EImages.product,
                    productName: 'Demon Scent',
                    productBrand: texts.brand,
                    productPrice: '5',
                    largePrice: false,
                  ),
                  VerticalProductCard(
                    productImage: EImages.product,
                    productName: 'Demon Scent',
                    productBrand: texts.brand,
                    productPrice: '5',
                    largePrice: false,
                  ),
                  VerticalProductCard(
                    productImage: EImages.product,
                    productName: 'Demon Scent',
                    productBrand: texts.brand,
                    productPrice: '5',
                    largePrice: false,
                  ),
                  VerticalProductCard(
                    productImage: EImages.product,
                    productName: 'Demon Scent',
                    productBrand: texts.brand,
                    productPrice: '5',
                    largePrice: false,
                  ),
                ],
              ),
              CategoryTab(
                showcases: [
                  BrandShowcase(
                    brandName: texts.brand,
                    brandImage: EImages.brand,
                    brandProductsCount: 20,
                    items: const [EImages.brand, EImages.brand, EImages.brand],
                    isNetworkImage: false,
                  ),
                  BrandShowcase(
                    brandName: texts.brand,
                    brandImage: EImages.brand,
                    brandProductsCount: 20,
                    items: const [EImages.brand, EImages.brand, EImages.brand],
                    isNetworkImage: false,
                  ),
                ],
                products: [
                  VerticalProductCard(
                    productImage: EImages.product,
                    productName: 'Demon Scent',
                    productBrand: texts.brand,
                    productPrice: '5',
                    largePrice: false,
                  ),
                  VerticalProductCard(
                    productImage: EImages.product,
                    productName: 'Demon Scent',
                    productBrand: texts.brand,
                    productPrice: '5',
                    largePrice: false,
                  ),
                  VerticalProductCard(
                    productImage: EImages.product,
                    productName: 'Demon Scent',
                    productBrand: texts.brand,
                    productPrice: '5',
                    largePrice: false,
                  ),
                  VerticalProductCard(
                    productImage: EImages.product,
                    productName: 'Demon Scent',
                    productBrand: texts.brand,
                    productPrice: '5',
                    largePrice: false,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
