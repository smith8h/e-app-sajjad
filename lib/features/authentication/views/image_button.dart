import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';

class ImageButton extends StatelessWidget {
  final VoidCallback onClick;
  final String icon;

  const ImageButton({
    super.key,
    required this.onClick,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(border: Border.all(color: EColors.grey), borderRadius: BorderRadius.circular(100)),
      child: IconButton(
        onPressed: onClick,
        icon: Image(width: ESizes.iconMd, height: ESizes.iconMd, image: AssetImage(icon)),
      ),
    );
  }
}
