import 'package:e_store/features/authentication/screens/login.dart';
import 'package:e_store/common/widgets/border_button.dart';
import 'package:e_store/features/authentication/screens/success_verification.dart';
import 'package:e_store/utils/constants/enums.dart';
import 'package:e_store/utils/constants/image_strings.dart';
import 'package:e_store/utils/constants/sizes.dart';
import 'package:e_store/utils/constants/texts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../common/widgets/solid_button.dart';
import '../../../utils/device/device_utility.dart';
import '../../../utils/helpers/helper_functions.dart';

class VerificationScreen extends StatelessWidget {
  const VerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final darkMode = EHelperFunctions.isDarkMode();
    EDeviceUtils.setDarkModeBarColors(darkMode);
    var texts = ETexts(AppLang.arb);

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [IconButton(onPressed: () => Get.offAll(() => const LoginScreen()), icon: const Icon(CupertinoIcons.clear))],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(ESizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image(image: const AssetImage(EImages.verifying), height: EDeviceUtils.getScreenHeight() * 0.3),
              const SizedBox(height: ESizes.spaceBtwSections),
              Text(texts.confirmEmailTitle(), style: Theme.of(context).textTheme.headlineMedium, textAlign: TextAlign.center),
              const SizedBox(height: ESizes.spaceBtwItems),
              Text('husseinshakir81@gmail.com', style: Theme.of(context).textTheme.labelLarge, textAlign: TextAlign.center),
              const SizedBox(height: ESizes.spaceBtwItems),
              Text(texts.confirmEmailSubtitle(), style: Theme.of(context).textTheme.labelLarge, textAlign: TextAlign.center),
              const SizedBox(height: ESizes.spaceBtwSections),
              SolidButton(text: texts.confirm(), onClick: () => Get.offAll(() => const SuccessVerificationScreen())),
              const SizedBox(height: ESizes.spaceBtwItems),
              BorderButton(text: texts.resendEmail(), onClick: () {}),
            ],
          ),
        ),
      ),
    );
  }
}
