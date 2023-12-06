import 'package:flutter/material.dart';
import '../../utils/constants/sizes.dart';

class ESpacingStyle {
  ESpacingStyle._();
  static const paddingWithAppBarHeight = EdgeInsets.only(
      top: ESizes.appBarHeight,
      left: ESizes.defaultSpace,
      bottom: ESizes.defaultSpace,
      right: ESizes.defaultSpace
  );
}