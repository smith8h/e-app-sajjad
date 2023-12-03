import 'package:e_store/utils/constants/enums.dart';

class ETexts {
  AppLang lang;

  ETexts(this.lang);

  // Global
  static String appName = 'CosmoScent';
  String ok() => lang == AppLang.arb ? 'حسنا' : 'OK';
  String cancel() => lang == AppLang.arb ? 'الغاء' : 'CANCEL';

  // on boarding
  String onBoarding1() => lang == AppLang.arb ? 'عنوان 1' : 'title 1';
  String onBoarding1Subtitle() => lang == AppLang.arb ? 'عنوان 2' : 'title 2';
  String onBoarding2() => lang == AppLang.arb ? 'عنوان 2' : 'title 2';
  String onBoarding2Subtitle() => lang == AppLang.arb ? 'عنوان 2' : 'title 2';
  String onBoarding3() => lang == AppLang.arb ? 'عنوان 3' : 'title 3';
  String onBoarding3Subtitle() => lang == AppLang.arb ? 'عنوان 3' : 'title 3';
  String skip() => lang == AppLang.arb ? 'تخطي' : 'Skip';

  // login
  String loginTitle() => lang == AppLang.arb ? 'مرحبا بعودتك' : 'Welcome Back';
  String loginSubtitle() => lang == AppLang.arb ? 'سجل الدخول واستمتع بمنتجاتنا الان' : 'Sign in and enjoy our products now';
  String loginEmail() => lang == AppLang.arb ? 'البريد الالكتروني' : 'EMail';
  String password() => lang == AppLang.arb ? 'كلمة المرور' : 'Password';
  String rememberMe() => lang == AppLang.arb ? 'تذكرني' : 'Remember me';
  String createAccount() => lang == AppLang.arb ? 'انشاء حساب' : 'Create Account';
  String forgetPassword() => lang == AppLang.arb ? 'نسيت كلمة المرور؟' : 'Forget password?';
  String login() => lang == AppLang.arb ? 'تسجيل الدخول' : 'Login';
  String otherLogin() => lang == AppLang.arb ? 'او باستخدام احد الخيارات' : 'Or using one of these';

  // signup
  String signupTitle() => lang == AppLang.arb ? 'للنشئ حسابك' : 'Let\'s Create Your Account';
  String name() => lang == AppLang.arb ? 'الاسم الاول' : 'First Name';
  String lastname() => lang == AppLang.arb ?  'الاسم الثاني' : 'Last Name';
  String username() => lang == AppLang.arb ?  'المعرف الشخصي' : 'Username';
  String phoneNumber() => lang == AppLang.arb ?  'رقم الهاتف' : 'Phone Number';
  String confirmPassword() => lang == AppLang.arb ? 'تأكيد كلمة المرور' : 'Confirm Password';
  String agreeTo() => lang == AppLang.arb ? 'اوافق على ' : 'I agree to ';
  String and() => lang == AppLang.arb ? 'و ' : 'and ';
  String privacyPolicy() => lang == AppLang.arb ? 'سياسة الخصوصية ' : 'Privacy Policy ';
  String termsOfUse() => lang == AppLang.arb ? 'شروط الاستخدام ' : 'Terms of Use ';
}
