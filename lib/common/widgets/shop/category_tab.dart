import 'package:e_store/common/widgets/containers/grid_view.dart';
import 'package:e_store/common/widgets/containers/product_card.dart';
import 'package:e_store/common/widgets/texts/section_header.dart';
import 'package:e_store/utils/constants/enums.dart';
import 'package:e_store/utils/constants/texts.dart';
import 'package:flutter/material.dart';
import '../../../utils/constants/sizes.dart';
import '../containers/brand_showcase.dart';

class CategoryTab extends StatelessWidget {
  const CategoryTab({super.key, required this.showcases, required this.products});

  final List<BrandShowcase> showcases;
  final List<VerticalProductCard> products;

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [Padding(
        padding: const EdgeInsets.all(ESizes.defaultSpace),
        child: Column(
          children: [
            // todo : make for loop to list cosmo or scent brands and items,
            for (BrandShowcase showcase in showcases) showcase,
            const SizedBox(height: ESizes.spaceBtwItems),
            SectionHeader(title: ETexts(AppLang.arb).youMayLike(), showButton: false),
            const SizedBox(height: ESizes.spaceBtwItems),
            EGridView(itemCount: products.length, columns: 3, childHeight: 210, builder: (_, index) => products[index]),
          ],
        ),
      )]
    );
  }
}
