import 'package:e_store/common/widgets/containers/app_bar.dart';
import 'package:e_store/common/widgets/home/header.dart';
import 'package:e_store/utils/constants/colors.dart';
import 'package:e_store/utils/constants/enums.dart';
import 'package:e_store/utils/constants/image_strings.dart';
import 'package:e_store/utils/constants/sizes.dart';
import 'package:e_store/utils/constants/texts.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../common/widgets/images/circular_image.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

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
                    title: Text(
                      texts.settingsAppBarTitle(),
                      style: Theme.of(context).textTheme.headlineSmall!.apply(color: EColors.white),
                    ),
                  ),
                  const SizedBox(height: ESizes.spaceBtwSections),
                  UserProfileTile(),
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
