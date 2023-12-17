import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';

class ECircularShape extends StatelessWidget {
  const ECircularShape({
    super.key,
    this.width,
    this.height,
    this.radius = 20,
    this.padding,
    this.child,
    this.backgroundColor,
    this.margin,
    this.showBorder = false,
  });

  final double? width, height, radius;
  final EdgeInsets? padding, margin;
  final Widget? child;
  final Color? backgroundColor;
  final bool showBorder;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: padding,
      margin: margin,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius!),
        border: showBorder ? Border.all(color: EColors.grey) : null,
        color: backgroundColor,
      ),
      child: child,
    );
  }
}
