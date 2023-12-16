import 'package:carousel_slider/carousel_slider.dart';
import 'package:e_store/utils/constants/colors.dart';
import 'package:e_store/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../common/widgets/containers/rounded_image.dart';
import '../../../common/widgets/containers/circular_shape.dart';
import '../../../features/shop/controllers/home_carousel_controller.dart';
import '../../../utils/constants/sizes.dart';

class PromoSlider extends StatelessWidget {
  const PromoSlider({
    super.key,
    required this.banners,
    this.autoPlay = true,
    this.autoPlayDuration = const Duration(seconds: 5),
  });

  final List<String> banners;
  final bool autoPlay;
  final Duration autoPlayDuration;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        CarouselSlider(
          items: banners.map((banner) => RoundedImage(image: banner)).toList(),
          options: CarouselOptions(
            viewportFraction: 1,
            autoPlay: autoPlay,
            autoPlayInterval: autoPlayDuration,
            onPageChanged: (index, _) => controller.updatePageIndicator(index),
          ),
        ),
        const SizedBox(height: ESizes.spaceBtwItems),
        Center(
          child: Obx(
            () => Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                for (int i = 0; i < banners.length; i++)
                  ECircularShape(
                    width: 15,
                    height: 4,
                    backgroundColor: controller.carousalCurrentIndex.value == i
                        ? EColors.primary
                        : EHelperFunctions.isDarkMode()
                            ? EColors.darkGrey
                            : EColors.grey,
                    margin: const EdgeInsets.symmetric(horizontal: 3),
                  ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
