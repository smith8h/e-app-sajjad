import 'package:e_store/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import '../../utils/constants/colors.dart';

class RoundedImage extends StatelessWidget {
  const RoundedImage({
    required this.image,
    this.isNetworkImage = false,
    this.width,
    this.height,
    this.padding,
    this.border,
    this.borderRadius = ESizes.md,
    this.applyImageRadius = true,
    this.backgroundCoIor = EColors.white,
    this.fit = BoxFit.contain,
    this.onPressed,
    super.key,
  });

  final double? width, height;
  final String image;
  final bool applyImageRadius;
  final BoxBorder? border;
  final double borderRadius;
  final Color backgroundCoIor;
  final BoxFit? fit;
  final EdgeInsetsGeometry? padding;
  final bool isNetworkImage;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) => GestureDetector(
        onTap: onPressed,
        child: Container(
          padding: padding,
          width: width,
          height: height,
          decoration: BoxDecoration(border: border, color: backgroundCoIor, borderRadius: BorderRadius.circular(borderRadius)),
          child: ClipRRect(
            borderRadius: applyImageRadius ? BorderRadius.circular(borderRadius) : BorderRadius.zero,
            child: Image(image: isNetworkImage ? NetworkImage(image) : AssetImage(image) as ImageProvider, fit: fit),
          ),
        ),
      );
}
