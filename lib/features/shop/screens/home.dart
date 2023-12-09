import 'package:e_store/common/widgets/app_bar.dart';
import 'package:e_store/utils/constants/colors.dart';
import 'package:e_store/utils/constants/enums.dart';
import 'package:e_store/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:sbadgeview/sbadgeview.dart';
import '../../../common/widgets/home/containers/search_container.dart';
import '../../../common/widgets/home/header.dart';
import '../../../utils/constants/texts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
                        badgeCount: 33,
                        badgePadding: const EdgeInsets.symmetric(horizontal: 5, vertical: 2),
                      ),
                    ],
                  ),
                  const SizedBox(height: ESizes.spaceBtwSections),
                  SearchContainer(text: texts.search()),
                  const SizedBox(height: ESizes.defaultSpace),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
