import 'package:e_store/utils/constants/colors.dart';
import 'package:e_store/utils/constants/enums.dart';
import 'package:e_store/utils/constants/texts.dart';
import 'package:e_store/utils/device/device_utility.dart';
import 'package:e_store/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'features/shop/controllers/navigation_controller.dart';
import 'common/widgets/custom_shapes/nav_menu_item.dart';
import 'features/shop/screens/home/home.dart';
import 'features/personalization/screens/settings/settings.dart';
import 'features/shop/screens/store/store.dart';
import 'features/shop/screens/wishlist/wish_list.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final darkMode = EHelperFunctions.isDarkMode();
    EDeviceUtils.setDarkModeBarColors(darkMode);
    var texts = ETexts(AppLang.arb);
    var navController = Get.put(NavigationController());

    final screens = [
      const HomeScreen(),
      const StoreScreen(),
      const WishListScreen(),
      const SettingsScreen(),
    ];

    return Scaffold(
      bottomNavigationBar: Obx(
        () => NavigationBar(
          elevation: 0,
          height: 80,
          backgroundColor: darkMode ? EColors.bgDark : EColors.bgLight,
          selectedIndex: navController.selectedIndex.value,
          labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
          destinations: [
            MenuItem(icon: Iconsax.home, text: texts.home()),
            MenuItem(icon: Iconsax.shop, text: texts.shop()),
            MenuItem(icon: Iconsax.heart, text: texts.wishList()),
            MenuItem(icon: Iconsax.user, text: texts.profile()),
          ],
          onDestinationSelected: (index) => navController.selectedIndex.value = index,
        ),
      ),
      body: Obx(() => screens[navController.selectedIndex.value]),
    );
  }


}
