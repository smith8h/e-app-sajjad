import 'package:e_store/utils/constants/enums.dart';

class ETexts {
  AppLang lang;

  ETexts(this.lang);

  // global
  static String appName = 'CosmoScent';
  String ok() => lang == AppLang.arb ? 'حسنا' : 'OK';
  String cancel() => lang == AppLang.arb ? 'الغاء' : 'CANCEL';
  String skip() => lang == AppLang.arb ? 'تخطي' : 'Skip';
  String confirm() => lang == AppLang.arb ? 'تأكيد' : 'Confirm';
  String continues() => lang == AppLang.arb ? 'متابعة' : 'Continue';
  String viewAll() => lang == AppLang.arb ? 'عرض الكل' : 'View All';

  // on boarding
  String onBoarding1() => lang == AppLang.arb ? 'عنوان 1' : 'title 1';
  String onBoarding1Subtitle() => lang == AppLang.arb ? 'عنوان 2' : 'title 2';
  String onBoarding2() => lang == AppLang.arb ? 'عنوان 2' : 'title 2';
  String onBoarding2Subtitle() => lang == AppLang.arb ? 'عنوان 2' : 'title 2';
  String onBoarding3() => lang == AppLang.arb ? 'عنوان 3' : 'title 3';
  String onBoarding3Subtitle() => lang == AppLang.arb ? 'عنوان 3' : 'title 3';

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
  String firstName() => lang == AppLang.arb ? 'الاسم الاول' : 'First Name';
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
  String resendEmail() => lang == AppLang.arb ? 'أعد الأرسال' : 'Resend Email';

  // success verification
  String emailConfirmedTitle() => lang == AppLang.arb ? 'تم تأكيد البريد الألكتروني' : 'Email Successfully Verified';
  String emailConfirmedSubtitle() => lang == AppLang.arb
      ? 'بأمكانك الان تصفح منتجاتنا والتمتع بخدماتنا.'
      : 'You can now continue to surf our products and enjoy our services.';

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

  // home screen
  String homeAppBarTitle() => lang == AppLang.arb ? 'الرئيسية' : 'Home';
  String homeAppBarSubtitle() => lang == AppLang.arb ? 'منتجاتنا وخدماتنا' : 'Our Products and Services';
  String search() => lang == AppLang.arb ? 'البحث عن منتج' : 'Search for a product';
  String popularCategories() => lang == AppLang.arb ? 'مجموعات شائعة' : 'Popular Categories';
  String popularProducts() => lang == AppLang.arb ? 'منتجات شائعة' : 'Popular Products';

  // store screen
  String shopAppBarTitle() => lang == AppLang.arb? 'المتجر' : 'Store';
  String shopAppBarSubtitle() => lang == AppLang.arb? 'منتجاتنا وخدماتنا' : 'Our Products and Services';
  String shopBrands() => lang == AppLang.arb ? 'شعارات عالمية': 'Popular Brands';
  String brandProducts() => lang == AppLang.arb ? 'عدد المنتجات': 'Products';
  String shopProducts() => lang == AppLang.arb? 'منتجات شائعة' : 'Popular Products';
  String youMayLike() => lang == AppLang.arb? 'قد يعجبك ايضا' : 'You May Like';

  // brands
  String brand = 'Zara';

  // settings screen
  String settingsAppBarTitle() => lang == AppLang.arb? 'الملف الشخصي' : 'Profile';
  String accountSettings() => lang == AppLang.arb? 'اعدادات الحساب' : 'Account Settings';
  String myAddresses() => lang == AppLang.arb? 'عناويني' : 'My Addresses';
  String shoppingDeliveryAddresses() => lang == AppLang.arb? 'ادارة عناوين التوصيل' : 'Set shopping delivery addresses';
  String myCart() => lang == AppLang.arb? 'سلتي' : 'My Cart';
  String addRemoveProducts() => lang == AppLang.arb? 'اضافة وحذف المنتجات والتحقق من الطلبات' : 'Add, remove';
  String myOrders() => lang == AppLang.arb? 'طلباتي' : 'My Orders';
  String inProgressAndCompleted() => lang == AppLang.arb? 'الطلبات قيد المعالجة والمكتملة' : 'In-Progress and completed orders';
  String notifications() => lang == AppLang.arb? 'الاشعارات' : 'Notifications';
  String kindOfNotificationMessages() => lang == AppLang.arb? 'ادارة رسائل الاشعارات' : 'Set any kind of notification messages';
  String accountPrivacy() => lang == AppLang.arb? 'الخصوصية' : 'Account Privacy';
  String manageDataUsage() => lang == AppLang.arb? 'ادارة البيانات والمستخدمين' : 'Manage data usage and connected accounts';
  String appSettings() => lang == AppLang.arb? 'اعدادات التطبيق' : 'App Settings';
  String language() => lang == AppLang.arb? 'اللغة' : 'Language';
  String changeLanguage() => lang == AppLang.arb? 'تغيير لغة التطبيق' : 'Change app language';
  String darkMode() => lang == AppLang.arb? 'الوضع الداكن' : 'Dark Mode';
  String changeDarkMode() => lang == AppLang.arb? 'تغيير الوضع الداكن' : 'Change dark mode';
  String hdImageQuality() => lang == AppLang.arb? 'دقة صورة عالية الجودة' : 'HD Image Quality';
  String loadHDImageInApp() => lang == AppLang.arb? 'تحميل الصور بدقة عالية الجودة' : 'Load images in HD quality';
  String uploadData() => lang == AppLang.arb? 'تحميل البيانات' : 'Upload Data';
  String saveDataToCloud() => lang == AppLang.arb? 'تحميل وحفظ البيانات في السحابة' : 'Save data to cloud and save it in your account';
  String logout() => lang == AppLang.arb? 'تسجيل الخروج' : 'Logout';

  // profile screen
  String changeProfilePicture() => lang == AppLang.arb? 'تغيير الصورة الشخصية' : 'Change profile picture';
  String profileInformation() => lang == AppLang.arb? 'المعلومات العامة' : 'Profile Information';
  String name() => lang == AppLang.arb? 'الاسم' : 'Name';
  String personalInformation() => lang == AppLang.arb? 'المعلومات الشخصية' : 'Personal Information';
  String gender() => lang == AppLang.arb? 'الجنس' : 'Gender';
  String userId() => lang == AppLang.arb? 'عنوان المستخدم' : 'User ID';
  String closeAccount() => lang == AppLang.arb? 'غلق الحساب' : 'Close Account';

}
