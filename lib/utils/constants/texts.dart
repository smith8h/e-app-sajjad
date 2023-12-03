import 'package:e_store/utils/constants/enums.dart';

class ETexts {
  // Global
  static String appName = 'CosmoScent';
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

  // login
  static String loginTitle(AppLang lang) {
    return lang == AppLang.arb ? 'مرحبا بعودتك' : 'Welcome Back';
  }
  static String loginSubtitle(AppLang lang) {
    return lang == AppLang.arb ? 'سجل الدخول واستمتع بمنتجاتنا الان' : 'Sign in and enjoy our products now';
  }
  static String loginEmailLabel(AppLang lang) {
    return lang == AppLang.arb ? 'البريد الالكتروني' : 'EMail';
  }
  static String loginPasswordLabel(AppLang lang) {
    return lang == AppLang.arb ? 'كلمة المرور' : 'Password';
  }
  static String rememberMe(AppLang lang) {
    return lang == AppLang.arb ? 'تذكرني' : 'Remember me';
  }
  static String createAccount(AppLang lang) {
    return lang == AppLang.arb ? 'انشاء حساب' : 'Create Account';
  }
  static String forgetPassword(AppLang lang) {
    return lang == AppLang.arb ? 'نسيت كلمة المرور؟' : 'Forget password?';
  }
  static String login(AppLang lang) {
    return lang == AppLang.arb ? 'تسجيل الدخول' : 'Login';
  }
  static String otherLogin(AppLang lang) {
    return lang == AppLang.arb ? 'او باستخدام احد الخيارات' : 'Or using one of these';
  }
}
