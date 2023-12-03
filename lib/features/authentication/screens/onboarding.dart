import 'package:e_store/utils/constants/colors.dart';
import 'package:e_store/utils/constants/enums.dart';
import 'package:e_store/utils/constants/image_strings.dart';
import 'package:e_store/utils/constants/sizes.dart';
import 'package:e_store/utils/constants/texts.dart';
import 'package:e_store/utils/device/device_utility.dart';
import 'package:e_store/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../controllers/onboarding/onboarding_controller.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final boardingController = Get.put(OnBoardingController());
    final isDarkMode = EHelperFunctions.isDarkMode();
    EDeviceUtils.setDarkModeBarColors(isDarkMode);
    var onBoardingItems = [
      {
        'image': EImages.onBoarding1,
        'title': ETexts.onBoarding1Title(AppLang.eng), // Todo : change from settings
        'subtitle': ETexts.onBoarding1Subtitle(AppLang.eng),
      },
      {
        'image': EImages.onBoarding2,
        'title': ETexts.onBoarding2Title(AppLang.eng),
        'subtitle': ETexts.onBoarding2Subtitle(AppLang.eng),
      },
      {
        'image': EImages.onBoarding3,
        'title': ETexts.onBoarding3Title(AppLang.eng),
        'subtitle': ETexts.onBoarding3Subtitle(AppLang.eng),
      },
    ];

    return Scaffold(
      body: Stack(
        children: [
          PageView.builder(
            controller: boardingController.pageController,
            onPageChanged: boardingController.updatePageIndicator,
            itemCount: onBoardingItems.length,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.all(ESizes.defaultSpace),
              child: Column(
                children: [
                  Image.asset(
                    onBoardingItems[index]['image']!,
                    width: EHelperFunctions.screenWidth() * 0.7,
                    height: EHelperFunctions.screenHeight() * 0.6,
                  ),
                  Text(
                    ETexts.onBoarding1Title(AppLang.arb),
                    style: Theme.of(context).textTheme.headlineMedium,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: ESizes.spaceBtwItems,
                  ),
                  Text(
                    ETexts.onBoarding1Subtitle(AppLang.arb),
                    style: Theme.of(context).textTheme.bodyMedium,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: EDeviceUtils.getAppBarHeight(),
            right: ESizes.defaultSpace,
            child: TextButton(
              onPressed: OnBoardingController.instance.skipPage,
              child: Text(ETexts.skip(AppLang.eng)),
            ),
          ),
          Positioned(
            bottom: EDeviceUtils.getBottomNavigationBarHeight(),
            left: ESizes.defaultSpace,
            child: SmoothPageIndicator(
              controller: boardingController.pageController,
              onDotClicked: boardingController.dotNavigationClick,
              count: 3,
              effect: ExpandingDotsEffect(
                activeDotColor: EColors.primary,
                dotColor: isDarkMode ? EColors.darkerGrey : EColors.darkGrey,
                dotHeight: 9,
              ),
            ),
          ),
          Positioned(
            bottom: EDeviceUtils.getBottomNavigationBarHeight() / 2,
            right: ESizes.defaultSpace,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(shape: const CircleBorder(), backgroundColor: EColors.primary),
              child: const Icon(Iconsax.arrow_right_3),
              onPressed: () {
                boardingController.nextPage();
              },
            ),
          )
        ],
      ),
    );
  }
}
