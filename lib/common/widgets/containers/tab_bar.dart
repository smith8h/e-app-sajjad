import 'package:e_store/utils/device/device_utility.dart';
import 'package:e_store/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import '../../../utils/constants/colors.dart';

class ETabBar extends StatelessWidget implements PreferredSizeWidget {
  const ETabBar({super.key, required this.tabs});

  final List<String> tabs;

  @override
  Widget build(BuildContext context) {
    final dark = EHelperFunctions.isDarkMode();

    return Material(
      color: dark ? EColors.bgDark : EColors.bgLight,
      child: TabBar(
        isScrollable: true,
        indicatorColor: EColors.primary,
        unselectedLabelColor: EColors.darkGrey,
        labelColor: dark ? EColors.white : EColors.primary,
        padding: EdgeInsets.zero,
        tabAlignment: TabAlignment.start,
        tabs: [
          for (int i = 0; i < tabs.length; i++) Tab(child: Text(tabs[i])),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(EDeviceUtils.getAppBarHeight());
}
