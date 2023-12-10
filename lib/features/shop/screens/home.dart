import 'package:e_store/common/widgets/custom_shapes/app_bar.dart';
import 'package:e_store/utils/constants/colors.dart';
import 'package:e_store/utils/constants/enums.dart';
import 'package:e_store/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:sbadgeview/sbadgeview.dart';
import '../../../common/widgets/custom_shapes/search_container.dart';
import '../../../common/widgets/custom_shapes/section_header.dart';
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
                  SearchContainer(text: texts.search(), showBorder: false),
                  const SizedBox(height: ESizes.spaceBtwSections),
                  Padding(
                    padding: const EdgeInsets.only(left: ESizes.defaultSpace),
                    child: Column(
                      children: [
                        SectionHeader(title: texts.popularCategories(), titleColor: EColors.bgLight, showButton: false),
                        const SizedBox(height: ESizes.spaceBtwItems),
                        SizedBox(
                          height: 80,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            shrinkWrap: true,
                            itemCount: 7,
                            itemBuilder: (_, index) {
                              return Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 4),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Container(
                                      width: 50,
                                      height: 50,
                                      // padding: const EdgeInsets.all(ESizes.xs),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: EColors.bgDark,
                                      ),
                                      child: const Center(
                                          child: Image(
                                        image: NetworkImage('Iconsax.shop'),
                                        fit: BoxFit.cover,
                                        color: EColors.darkGrey,
                                      )),
                                    ),
                                    const SizedBox(height: ESizes.sm),
                                    Text(
                                      'عطور',
                                      style: Theme.of(context).textTheme.labelMedium!.apply(color: EColors.darkerGrey),
                                    ),
                                  ],
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
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
