import 'package:e_store/common/widgets/containers/app_bar.dart';
import 'package:e_store/common/widgets/images/circular_image.dart';
import 'package:e_store/common/widgets/texts/section_header.dart';
import 'package:e_store/utils/constants/enums.dart';
import 'package:e_store/utils/constants/image_strings.dart';
import 'package:e_store/utils/constants/sizes.dart';
import 'package:e_store/utils/constants/texts.dart';
import 'package:e_store/utils/device/device_utility.dart';
import 'package:e_store/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final texts = ETexts(AppLang.arb);
    final dark = EHelperFunctions.isDarkMode();
    EDeviceUtils.setDarkModeBarColors(dark);

    return Scaffold(
      appBar: EAppBar(title: Text(texts.profile()), showBackArrow: true),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(ESizes.defaultSpace),
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    const ECircularImage(image: EImages.profile, width: 80, height: 80),
                    TextButton(child: Text(texts.changeProfilePicture()), onPressed: () {})
                  ],
                ),
              ),
              const SizedBox(height: ESizes.spaceBtwItems / 2),
              const Divider(),
              const SizedBox(height: ESizes.spaceBtwItems),
              SectionHeader(title: texts.profileInformation(), showButton: false),
              const SizedBox(height: ESizes.spaceBtwItems),
              ProfileMenuTile(title: texts.name())
            ],
          ),
        ),
      ),
    );
  }
}
