import 'package:e_store/utils/device/device_utility.dart';
import 'package:flutter/material.dart';
import '../../../utils/constants/colors.dart';

class ETabBar extends StatelessWidget implements PreferredSizeWidget {
  const ETabBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const TabBar(
      isScrollable: true,
      indicatorColor: EColors.primary,
      unselectedLabelColor: EColors.darkGrey,
      labelColor: EColors.primary,
      tabs: [
        Tab(child: Text('Cosmetics')),
        Tab(child: Text('Perfumes')),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(EDeviceUtils.getAppBarHeight());
}
