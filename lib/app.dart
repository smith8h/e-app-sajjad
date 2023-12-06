import 'package:e_store/features/authentication/screens/onboarding.dart';
import 'package:e_store/utils/constants/texts.dart';
import 'package:e_store/utils/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: ETexts.appName,
      themeMode: ThemeMode.system,
      theme: ETheme.light,
      darkTheme: ETheme.dark,
      debugShowCheckedModeBanner: false,
      home: const OnBoardingScreen(),
    );
  }
}
