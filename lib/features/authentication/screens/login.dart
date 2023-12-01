import 'package:e_store/common/styles/spacing_style.dart';
import 'package:e_store/utils/constants/image_strings.dart';
import 'package:e_store/utils/device/device_utility.dart';
import 'package:e_store/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  Widget build(context) {
    final isDarkMode = EHelperFunctions.isDarkMode();

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: ESpacingStyle.paddingWithAppBarHeight,
          child: Column(children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image(
                  height: 150,
                  image: AssetImage(isDarkMode ? EImages.appLogoWhite : EImages.appLogoBlack),
                ),
              ],
            )
          ]),
        ),
      ),
    );
  }
}
