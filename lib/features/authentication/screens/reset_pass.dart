import 'package:e_store/common/widgets/buttons/border_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../common/styles/spacing_style.dart';
import '../../../common/widgets/buttons/solid_button.dart';
import '../../../utils/constants/enums.dart';
import '../../../utils/constants/image_strings.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/constants/texts.dart';
import '../../../utils/device/device_utility.dart';
import '../../../utils/helpers/helper_functions.dart';

class ResetPassScreen extends StatelessWidget {
  const ResetPassScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final darkMode = EHelperFunctions.isDarkMode();
    EDeviceUtils.setDarkModeBarColors(darkMode);
    var texts = ETexts(AppLang.arb);

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [IconButton(onPressed: () => Get.back(), icon: const Icon(CupertinoIcons.clear))],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: ESpacingStyle.paddingWithAppBarHeight,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image(image: const AssetImage(EImages.forgetPassword), width: EDeviceUtils.getScreenWidth() * 0.6),
              const SizedBox(height: ESizes.spaceBtwSections),
              Text(texts.resetPasswordTitle(), style: Theme.of(context).textTheme.headlineMedium, textAlign: TextAlign.center),
              const SizedBox(height: ESizes.spaceBtwItems),
              Text(texts.resetPasswordSubtitle(), style: Theme.of(context).textTheme.labelLarge, textAlign: TextAlign.center),
              const SizedBox(height: ESizes.spaceBtwSections),
              SolidButton(text: texts.continues(), onClick: () /*=> Get.offAll(()*/ {}/*)*/),
              const SizedBox(height: ESizes.spaceBtwItems),
              BorderButton(text: texts.resendEmail(), onClick: () /*=> Get.offAll(()*/ {}/*)*/),
            ],
          ),
        ),
      ),
    );
  }
}
