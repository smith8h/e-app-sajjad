import 'package:e_store/common/styles/spacing_style.dart';
import 'package:e_store/utils/constants/colors.dart';
import 'package:e_store/utils/constants/enums.dart';
import 'package:e_store/utils/constants/image_strings.dart';
import 'package:e_store/utils/constants/sizes.dart';
import 'package:e_store/utils/constants/texts.dart';
import 'package:e_store/utils/device/device_utility.dart';
import 'package:e_store/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(context) {
    final darkMode = EHelperFunctions.isDarkMode();
    EDeviceUtils.setDarkModeBarColors(darkMode);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: ESpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              const SizedBox(height: ESizes.spaceBtwItems),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Image(height: 100, image: AssetImage(EImages.appLogoPink)),
                  Text(
                    ETexts.loginTitle(AppLang.arb),
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  const SizedBox(height: ESizes.sm),
                  Text(
                    ETexts.loginSubtitle(AppLang.arb),
                    style: Theme.of(context).textTheme.bodyMedium,
                  )
                ],
              ),
              const SizedBox(height: ESizes.spaceBtwSections),
              Form(
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        prefixIcon: const Icon(Iconsax.direct_right),
                        labelText: ETexts.loginEmailLabel(AppLang.arb),
                      ),
                    ),
                    const SizedBox(height: ESizes.spaceBtwInputFields),
                    TextFormField(
                      decoration: InputDecoration(
                        prefixIcon: const Icon(Iconsax.password_check),
                        labelText: ETexts.loginPasswordLabel(AppLang.arb),
                        suffixIcon: const Icon(Iconsax.eye_slash),
                      ),
                    ),
                    const SizedBox(height: ESizes.spaceBtwItems / 2),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Checkbox(
                              value: true,
                              onChanged: (isChecked) {},
                            ),
                            Text(ETexts.rememberMe(AppLang.arb)),
                          ],
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(ETexts.forgetPassword(AppLang.arb)),
                        )
                      ],
                    ),
                    const SizedBox(height: ESizes.spaceBtwInputFields),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text(ETexts.login(AppLang.arb)),
                      ),
                    ),
                    const SizedBox(height: ESizes.spaceBtwItems),
                    SizedBox(
                      width: double.infinity,
                      child: OutlinedButton(
                        onPressed: () {},
                        child: Text(ETexts.createAccount(AppLang.arb)),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: ESizes.spaceBtwSections),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Flexible(
                    child: Divider(
                        color: darkMode ? EColors.darkerGrey : EColors.darkGrey, thickness: 0.5, indent: 60, endIndent: 5),
                  ),
                  Text(
                    ETexts.otherLogin(AppLang.arb),
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  Flexible(
                    child: Divider(
                        color: darkMode ? EColors.darkerGrey : EColors.darkGrey, thickness: 0.5, indent: 5, endIndent: 60),
                  ),
                ],
              ),
              const SizedBox(height: ESizes.spaceBtwItems),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(border: Border.all(color: EColors.grey), borderRadius: BorderRadius.circular(100)),
                    child: IconButton(
                      onPressed: () {},
                      icon: const Image(
                        width: ESizes.iconMd,
                        height: ESizes.iconMd,
                        image: AssetImage(EImages.google),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: ESizes.spaceBtwItems,
                  ),
                  Container(
                    decoration: BoxDecoration(border: Border.all(color: EColors.grey), borderRadius: BorderRadius.circular(100)),
                    child: IconButton(
                      onPressed: () {},
                      icon: const Image(width: ESizes.iconMd, height: ESizes.iconMd, image: AssetImage(EImages.facebook)),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
