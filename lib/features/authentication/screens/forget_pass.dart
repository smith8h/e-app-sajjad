import 'package:e_store/features/authentication/screens/reset_pass.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:get/get.dart';
import '../../../common/widgets/edit_text.dart';
import '../../../common/widgets/solid_button.dart';
import '../../../utils/constants/enums.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/constants/texts.dart';
import '../../../utils/device/device_utility.dart';
import '../../../utils/helpers/helper_functions.dart';

class ForgetPassScreen extends StatelessWidget {
  const ForgetPassScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final darkMode = EHelperFunctions.isDarkMode();
    EDeviceUtils.setDarkModeBarColors(darkMode);
    var texts = ETexts(AppLang.arb);

    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(ESizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(texts.forgetPasswordTitle(), style: Theme.of(context).textTheme.headlineMedium),
            const SizedBox(height: ESizes.spaceBtwItems),
            Text(texts.forgetPasswordSubtitle(), style: Theme.of(context).textTheme.labelLarge, textAlign: TextAlign.center),
            const SizedBox(height: ESizes.spaceBtwSections * 2),
            EditText(prefixIcon: Iconsax.direct_right, label: texts.email()),
            const SizedBox(height: ESizes.spaceBtwSections),
            SolidButton(text: texts.confirm(), onClick: () => Get.off(() => const ResetPassScreen())),

          ],
        ),
      ),
    );
  }
}
