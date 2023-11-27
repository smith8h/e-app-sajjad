import 'package:e_store/utils/constants/enums.dart';

class ETexts {
  // Global
  static String appName(AppLang lang) {
    return lang == AppLang.arb ? 'كوزموسينت' : lang == AppLang.eng ? 'CosmoScent' : '';
  }
  static String ok(AppLang lang) {
    return lang == AppLang.arb ? 'حسنا' : lang == AppLang.eng ? 'OK' : '';
  }
  static String cancel(AppLang lang) {
    return lang == AppLang.arb ? 'الغاء' : lang == AppLang.eng ? 'CANCEL' : '';
  }
}
