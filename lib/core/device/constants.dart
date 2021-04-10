import 'package:flutter/rendering.dart';

class AppConstant {
  static const SUPPORTED_LOCALE = [
    AppConstant.EN_LOCALE,
    AppConstant.TR_LOCALE,
  ];
  static const TR_LOCALE = Locale("tr", "TR");
  static const EN_LOCALE = Locale("en", "US");
  static const LANG_PATH = "assets/language";
  static const FONT_FAMILY = 'NUNITO';
}

enum PreferencesKeys { IS_FIRST_APP } // shared_preferences

class NavigationConstants {
  static const String HOME = "/home";
  static const String ONBOARD = "/onboard";
  static const String TEST = "/test";
  static const String SPLASH = "/splash_screen";
}