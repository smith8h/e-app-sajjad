import 'package:e_store/utils/constants/enums.dart';

class ETexts {
  AppLang lang;

  ETexts(this.lang);

  // global
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

  String email() => lang == AppLang.arb ? 'البريد الالكتروني' : 'EMail';

  String password() => lang == AppLang.arb ? 'كلمة المرور' : 'Password';

  String rememberMe() => lang == AppLang.arb ? 'تذكرني' : 'Remember me';

  String createAccount() => lang == AppLang.arb ? 'انشاء حساب' : 'Create Account';

  String forgetPassword() => lang == AppLang.arb ? 'نسيت كلمة المرور؟' : 'Forget password?';

  String login() => lang == AppLang.arb ? 'تسجيل الدخول' : 'Login';

  String otherLogin() => lang == AppLang.arb ? 'او باستخدام احد الخيارات' : 'Or using one of these';

  // signup
  String signupTitle() => lang == AppLang.arb ? 'للنشئ حسابك' : 'Let\'s Create Your Account';

  String name() => lang == AppLang.arb ? 'الاسم الاول' : 'First Name';

  String lastname() => lang == AppLang.arb ? 'الاسم الثاني' : 'Last Name';

  String username() => lang == AppLang.arb ? 'المعرف الشخصي' : 'Username';

  String phoneNumber() => lang == AppLang.arb ? 'رقم الهاتف' : 'Phone Number';

  String confirmPassword() => lang == AppLang.arb ? 'تأكيد كلمة المرور' : 'Confirm Password';

  String agreeTo() => lang == AppLang.arb ? 'اوافق على ' : 'I agree to ';

  String and() => lang == AppLang.arb ? '\nو ' : '\nand ';

  String privacyPolicy() => lang == AppLang.arb ? 'سياسة الخصوصية ' : 'Privacy Policy ';

  String termsOfUse() => lang == AppLang.arb ? 'شروط الاستخدام ' : 'Terms of Use ';

  // verification
  String confirmEmailTitle() => lang == AppLang.arb ? 'تأكيد البريد الألكتروني' : 'Confirm Email';

  String confirmEmailSubtitle() => lang == AppLang.arb
      ? 'يرجى تأكيد البريد الألكتروني لضمان استمرارية استخدام خدماتنا ومنتجاتنا.'
      : 'Please confirm E-mail to ensure using the latest of our services and products.';

  String confirm() => lang == AppLang.arb ? 'تأكيد' : 'Confirm';

  String resendEmail() => lang == AppLang.arb ? 'أعد الأرسال' : 'Resend Email';

  // success verification
  String emailConfirmedTitle() => lang == AppLang.arb ? 'تم تأكيد البريد الألكتروني' : 'Email Successfully Verified';

  String emailConfirmedSubtitle() => lang == AppLang.arb
      ? 'بأمكانك الان تصفح منتجاتنا والتمتع بخدماتنا.'
      : 'You can now continue to surf our products and enjoy our services.';

  String continues() => lang == AppLang.arb ? 'متابعة' : 'Continue';

  // forget pass
  String forgetPasswordTitle() => lang == AppLang.arb ? 'نسيت كلمة المرور' : 'Forget Your Password';

  String forgetPasswordSubtitle() => lang == AppLang.arb
      ? 'بعض الاحيان الناس ينسون ايضا! اكتب بريدك الالكتروني وسنرسل لك طلب اعادة تعيين كلمة المرور'
      : 'Don\'t worry, people sometimes forge too, write your Email and we\'ll send you a reset email.';

  // reset pass
  String resetPasswordTitle() =>
      lang == AppLang.arb ? 'تم إرسال البريد الإلكتروني لإعادة تعيين كلمة المرور' : 'Password Reset Email Sent';

  String resetPasswordSubtitle() => lang == AppLang.arb
      ? 'أمان حسابك هو أولويتنا! لقد أرسلنا لك رابطا آمنا لتغيير كلمة المرور الخاصة بك بأمان والحفاظ على حماية حسابك.'
      : 'Your Account Security is Our Priority! We\'ve Sent You a secure Link to safely Change your password and Keep Your Account Protected.';

  // navigation menu
  String home() => lang == AppLang.arb ? 'الرئيسية' : 'Home';
  String shop() => lang == AppLang.arb ? 'المتجر' : 'Shop';
  String wishList() => lang == AppLang.arb ? 'المفضلة' : 'Wish List';
  String profile() => lang == AppLang.arb ? 'الملف الشخصي' : 'Profile';
}
