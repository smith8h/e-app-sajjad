import 'package:e_store/utils/constants/enums.dart';

class ETexts {
  // Global
  static String appName(AppLang lang) {
    return lang == AppLang.arb ? 'كوزموسينت' : 'CosmoScent';
  }
  static String ok(AppLang lang) {
    return lang == AppLang.arb ? 'حسنا' : 'OK';
  }
  static String cancel(AppLang lang) {
    return lang == AppLang.arb ? 'الغاء' : 'CANCEL';
  }

  // on boarding
  static String onBoarding1Title(AppLang lang) {
    return lang == AppLang.arb ? 'عنوان 1' : 'title 1';
  }
  static String onBoarding1Subtitle(AppLang lang) {
    return lang == AppLang.arb ? 'عنوان 2' : 'title 2';
  }
  static String onBoarding2Title(AppLang lang) {
    return lang == AppLang.arb ? 'عنوان 2' : 'title 2';
  }
  static String onBoarding2Subtitle(AppLang lang) {
    return lang == AppLang.arb ? 'عنوان 2' : 'title 2';
  }
  static String onBoarding3Title(AppLang lang) {
    return lang == AppLang.arb ? 'عنوان 3' : 'title 3';
  }
  static String onBoarding3Subtitle(AppLang lang) {
    return lang == AppLang.arb ? 'عنوان 3' : 'title 3';
  }
  static String skip(AppLang lang) {
    return lang == AppLang.arb ? 'تخطي' : 'Skip';
  }
}
