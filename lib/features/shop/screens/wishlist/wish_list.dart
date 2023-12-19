import 'package:e_store/common/widgets/containers/app_bar.dart';
import 'package:e_store/common/widgets/containers/grid_view.dart';
import 'package:e_store/common/widgets/containers/product_card.dart';
import 'package:e_store/features/shop/screens/home/home.dart';
import 'package:e_store/utils/constants/enums.dart';
import 'package:e_store/utils/constants/image_strings.dart';
import 'package:e_store/utils/constants/sizes.dart';
import 'package:e_store/utils/constants/texts.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../common/widgets/buttons/circular_icon.dart';

class WishListScreen extends StatelessWidget {
  const WishListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final texts = ETexts(AppLang.arb);

    return Scaffold(
      appBar: EAppBar(
        title: Text(texts.wishList(), style: Theme.of(context).textTheme.headlineSmall),
        actions: [CircularImage(icon: Iconsax.add, onPressed: () => Get.to(const HomeScreen()))],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(ESizes.defaultSpace),
          child: Column(
            children: [
              EGridView(
                itemCount: 7,
                columns: 3,
                childHeight: 210,
                builder: (_, index) => VerticalProductCard(
                  productImage: EImages.product,
                  productName: 'Demon Scent',
                  productBrand: texts.brand,
                  productPrice: '10',
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
