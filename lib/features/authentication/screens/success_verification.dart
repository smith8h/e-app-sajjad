import 'package:e_store/common/styles/spacing_style.dart';
import 'package:e_store/features/authentication/screens/login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../common/widgets/custom_shapes/solid_button.dart';
import '../../../utils/constants/enums.dart';
import '../../../utils/constants/image_strings.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/constants/texts.dart';
import '../../../utils/device/device_utility.dart';
import '../../../utils/helpers/helper_functions.dart';

class SuccessVerificationScreen extends StatelessWidget {
  const SuccessVerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final darkMode = EHelperFunctions.isDarkMode();
    EDeviceUtils.setDarkModeBarColors(darkMode);
    var texts = ETexts(AppLang.arb);

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: ESpacingStyle.paddingWithAppBarHeight,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image(image: const AssetImage(EImages.verifying), width: EDeviceUtils.getScreenWidth() * 0.6),
              const SizedBox(height: ESizes.spaceBtwSections),
              Text(texts.emailConfirmedTitle(), style: Theme.of(context).textTheme.headlineMedium, textAlign: TextAlign.center),
              const SizedBox(height: ESizes.spaceBtwItems),
              Text(texts.emailConfirmedSubtitle(), style: Theme.of(context).textTheme.labelLarge, textAlign: TextAlign.center),
              const SizedBox(height: ESizes.spaceBtwSections),
              SolidButton(text: texts.continues(), onClick: () => Get.offAll(() => const LoginScreen())),
            ],
          ),
        ),
      ),
    );
  }
}
