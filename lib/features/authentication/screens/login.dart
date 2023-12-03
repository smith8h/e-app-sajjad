import 'package:e_store/common/styles/spacing_style.dart';
import 'package:e_store/features/authentication/screens/signup_screen.dart';
import 'package:e_store/features/authentication/views/divider.dart';
import 'package:e_store/features/authentication/views/header.dart';
import 'package:e_store/utils/constants/enums.dart';
import 'package:e_store/utils/constants/image_strings.dart';
import 'package:e_store/utils/constants/sizes.dart';
import 'package:e_store/utils/constants/texts.dart';
import 'package:e_store/utils/device/device_utility.dart';
import 'package:e_store/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import '../views/border_button.dart';
import '../views/form_field.dart';
import '../views/image_button.dart';
import '../views/solid_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(context) {
    final darkMode = EHelperFunctions.isDarkMode();
    EDeviceUtils.setDarkModeBarColors(darkMode);
    var texts = ETexts(AppLang.arb);

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: ESpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              const SizedBox(height: ESizes.spaceBtwItems),
              Header(image: EImages.appLogoPink, title: texts.loginTitle(), subtitle: texts.loginSubtitle()),
              const SizedBox(height: ESizes.spaceBtwSections),
              Form(
                child: Column(
                  children: [
                    EditText(prefixIcon: Iconsax.direct_right, label: texts.loginEmail()),
                    const SizedBox(height: ESizes.spaceBtwInputFields),
                    EditText(prefixIcon: Iconsax.password_check, label: texts.password(), suffixIcon: Iconsax.eye_slash),
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
                            Text(texts.rememberMe()),
                          ],
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(texts.forgetPassword()),
                        )
                      ],
                    ),
                    const SizedBox(height: ESizes.spaceBtwInputFields),
                    SolidButton(text: texts.login(), onClick: () {}),
                    const SizedBox(height: ESizes.spaceBtwItems),
                    BorderButton(text: texts.createAccount(), onClick: () => Get.to(() => const SignupScreen())),
                  ],
                ),
              ),
              const SizedBox(height: ESizes.spaceBtwSections),
              EDivider(darkMode: darkMode, text: texts.otherLogin()),
              const SizedBox(height: ESizes.spaceBtwItems),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ImageButton(icon: EImages.google, onClick: () {}),
                  const SizedBox(width: ESizes.spaceBtwItems),
                  ImageButton(icon: EImages.facebook, onClick: () {}),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
