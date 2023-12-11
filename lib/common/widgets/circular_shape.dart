import 'package:flutter/material.dart';

import '../../utils/constants/colors.dart';

class ECircularShape extends StatelessWidget {
  const ECircularShape({
    super.key,
    this.width = 400,
    this.height = 400,
    this.radius = 400,
    this.padding,
    this.child,
    this.backgroundColor = EColors.white,
    this.margin,
  });

  final double? width;
  final double? height;
  final double radius;
  final EdgeInsets? padding;
  final EdgeInsets? margin;
  final Widget? child;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: padding,
      margin: margin,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(radius), color: backgroundColor),
      child: child,
    );
  }
}
