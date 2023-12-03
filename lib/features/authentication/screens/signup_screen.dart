import 'package:e_store/features/authentication/views/divider.dart';
import 'package:e_store/features/authentication/views/form_field.dart';
import 'package:e_store/features/authentication/views/image_button.dart';
import 'package:e_store/features/authentication/views/solid_button.dart';
import 'package:e_store/utils/constants/colors.dart';
import 'package:e_store/utils/constants/enums.dart';
import 'package:e_store/utils/constants/sizes.dart';
import 'package:e_store/utils/constants/texts.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../../../utils/constants/image_strings.dart';
import '../../../utils/device/device_utility.dart';
import '../../../utils/helpers/helper_functions.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final darkMode = EHelperFunctions.isDarkMode();
    EDeviceUtils.setDarkModeBarColors(darkMode);
    var texts = ETexts(AppLang.arb);

    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(ESizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(texts.signupTitle(), style: Theme.of(context).textTheme.headlineMedium),
              const SizedBox(height: ESizes.spaceBtwSections),
              Form(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(child: EditText(prefixIcon: Iconsax.user, label: texts.name())),
                        const SizedBox(width: ESizes.spaceBtwInputFields),
                        Expanded(child: EditText(prefixIcon: Iconsax.user, label: texts.lastname())),
                      ],
                    ),
                    const SizedBox(height: ESizes.spaceBtwInputFields),
                    EditText(prefixIcon: Iconsax.user_edit, label: texts.username()),
                    const SizedBox(height: ESizes.spaceBtwInputFields),
                    EditText(prefixIcon: Iconsax.call, label: texts.phoneNumber()),
                    const SizedBox(height: ESizes.spaceBtwInputFields),
                    EditText(
                      prefixIcon: Iconsax.password_check,
                      label: texts.password(),
                      suffixIcon: Iconsax.eye_slash,
                      obscureText: true,
                    ),
                    const SizedBox(height: ESizes.spaceBtwInputFields),
                    EditText(
                      prefixIcon: Iconsax.password_check,
                      label: texts.confirmPassword(),
                      suffixIcon: Iconsax.eye_slash,
                      obscureText: true,
                    ),
                    const SizedBox(height: ESizes.spaceBtwInputFields),
                    Row(
                      children: [
                        Checkbox(
                          value: true,
                          onChanged: (isChecked) {},
                        ),
                        Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(text: texts.agreeTo(), style: Theme.of(context).textTheme.bodySmall),
                              TextSpan(
                                  text: texts.privacyPolicy(),
                                  style: Theme.of(context).textTheme.bodyMedium!.apply(
                                        color: EColors.secondary,
                                        decoration: TextDecoration.underline,
                                        decorationColor: EColors.secondary,
                                      )),
                              TextSpan(text: texts.and(), style: Theme.of(context).textTheme.bodySmall),
                              TextSpan(
                                  text: texts.termsOfUse(),
                                  style: Theme.of(context).textTheme.bodyMedium!.apply(
                                        color: EColors.secondary,
                                        decoration: TextDecoration.underline,
                                        decorationColor: EColors.secondary,
                                      )),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: ESizes.spaceBtwSections),
                    SolidButton(
                      text: texts.createAccount(),
                      onClick: () {},
                    ),
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
