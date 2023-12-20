import 'package:e_store/common/widgets/buttons/border_button.dart';
import 'package:e_store/common/widgets/containers/app_bar.dart';
import 'package:e_store/common/widgets/containers/settings_menu_tile.dart';
import 'package:e_store/common/widgets/home/header.dart';
import 'package:e_store/common/widgets/texts/section_header.dart';
import 'package:e_store/utils/constants/colors.dart';
import 'package:e_store/utils/constants/enums.dart';
import 'package:e_store/utils/constants/image_strings.dart';
import 'package:e_store/utils/constants/sizes.dart';
import 'package:e_store/utils/constants/texts.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../common/widgets/containers/user_profile_tile.dart';
import '../profile/profile.dart';
import 'package:get/get.dart';

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
                  const SizedBox(height: ESizes.spaceBtwItems),
                  UserProfileTile(
                    profileImage: EImages.profile,
                    profileName: 'Hussein Shakir',
                    profileEmail: 'husseinshakir81@gmail.com',
                    onEditBtnPressed: () => Get.to(const ProfileScreen()),
                  ),
                  const SizedBox(height: ESizes.defaultSpace),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(ESizes.defaultSpace),
              child: Column(
                children: [
                  SectionHeader(title: texts.accountSettings(), showButton: false),
                  const SizedBox(height: ESizes.spaceBtwItems),
                  SettingsMenuTile(
                    icon: Iconsax.safe_home,
                    title: texts.myAddresses(),
                    subtitle: texts.shoppingDeliveryAddresses(),
                    onTap: () {},
                  ),
                  SettingsMenuTile(
                    icon: Iconsax.shopping_cart,
                    title: texts.myCart(),
                    subtitle: texts.addRemoveProducts(),
                    onTap: () {},
                  ),
                  SettingsMenuTile(
                    icon: Iconsax.bag_tick,
                    title: texts.myOrders(),
                    subtitle: texts.inProgressAndCompleted(),
                    onTap: () {},
                  ),
                  // todo : add coupons tile ?
                  SettingsMenuTile(
                    icon: Iconsax.notification,
                    title: texts.notifications(),
                    subtitle: texts.kindOfNotificationMessages(),
                    onTap: () {},
                  ),
                  SettingsMenuTile(
                    icon: Iconsax.security_card,
                    title: texts.accountPrivacy(),
                    subtitle: texts.manageDataUsage(),
                    onTap: () {},
                  ),
                  const SizedBox(height: ESizes.spaceBtwSections),
                  SectionHeader(title: texts.appSettings(), showButton: false),
                  const SizedBox(height: ESizes.spaceBtwItems),
                  SettingsMenuTile(
                    icon: Iconsax.moon,
                    title: texts.darkMode(),
                    subtitle: texts.changeDarkMode(),
                    onTap: () {},
                  ),
                  SettingsMenuTile(
                    icon: Iconsax.language_square,
                    title: texts.language(),
                    subtitle: texts.changeLanguage(),
                    onTap: () {},
                  ),
                  SettingsMenuTile(
                    icon: Iconsax.image,
                    title: texts.hdImageQuality(),
                    subtitle: texts.loadHDImageInApp(),
                    trailing: Switch(value: false, onChanged: (isChecked) {}),
                  ),
                  SettingsMenuTile(
                    icon: Iconsax.document_upload,
                    title: texts.uploadData(),
                    subtitle: texts.saveDataToCloud(),
                    onTap: () {},
                  ),
                  const SizedBox(height: ESizes.spaceBtwSections),
                  BorderButton(text: texts.logout(), onClick: () {}),
                  const SizedBox(height: ESizes.spaceBtwSections * 2.5),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
