import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../screens/login.dart';

class OnBoardingController extends GetxController {
  static OnBoardingController get instance => Get.find();

  final pageController = PageController();
  Rx<int> currentPageIndex = 0.obs;

  void updatePageIndicator(index) => currentPageIndex.value = index;

  void dotNavigationClick(index) {
    currentPageIndex.value = index;
    pageController.animateToPage(index, duration: const Duration(milliseconds: 150), curve: Curves.linear);
  }

  void nextPage() {
    if (currentPageIndex.value == 2) {
      Get.offAll(() => const LoginScreen());
    } else {
      pageController.nextPage(duration: const Duration(milliseconds: 150), curve: Curves.linear);
    }
  }

  void skipPage() {
    currentPageIndex.value = 2;
    pageController.animateToPage(2, duration: const Duration(milliseconds: 150), curve: Curves.linear);
  }
}
