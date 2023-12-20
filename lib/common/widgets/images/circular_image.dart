import 'package:flutter/material.dart';
import '../../../utils/constants/sizes.dart';

class ECircularImage extends StatelessWidget {
  const ECircularImage({
    required this.image,
    this.isNetworkImage = false,
    this.width = 55,
    this.height = 55,
    this.padding = ESizes.sm,
    this.backgroundColor,
    this.overlayColor,
    this.fit = BoxFit.contain,
    super.key,
  });

  final double? width, height;
  final String image;
  final Color? backgroundColor, overlayColor;
  final BoxFit? fit;
  final double padding;
  final bool isNetworkImage;

  @override
  Widget build(context) {

    return Container(
      width: width,
      height: height,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(100),
      ),
      child: Center(
        child: Image(
          fit: fit,
          image: isNetworkImage ? NetworkImage(image) : AssetImage(image) as ImageProvider,
          color: overlayColor,
        ),
      ),
    );
  }
}