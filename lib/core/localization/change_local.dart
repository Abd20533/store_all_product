import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:store_all_things/core/constant/app_theme.dart';
import 'package:store_all_things/core/constant/change_theme.dart';
import 'package:store_all_things/core/services/services.dart';

class LocaleController extends GetxController {
  ThemeData appTheme = appThemeEnglish;
  ThemeMode appThemeMode = appThemeModeDark;

  Locale? language;
  MyServices myServices = Get.find();
    changeLanguage(String codeLanguage) {
    ///
    Locale locale = Locale(codeLanguage);
    myServices.mySharedPreferences.setString("language", codeLanguage);
    myServices.mySharedPreferences.setString("theme", codeLanguage);
    appTheme = codeLanguage == "ar" ? appThemeArabic : appThemeEnglish;

    Get.changeTheme(appTheme);
    Get.updateLocale(locale);
  }

  changeAppThemeMode(String codeThemeMode) {
    myServices.mySharedPreferences.setString("themeMode", codeThemeMode);
    appThemeMode =
        codeThemeMode == "light" ? appThemeModeLight : appThemeModeDark;
    Get.changeThemeMode(appThemeMode);
    Get.appUpdate();
  }

  @override
  void onInit() {
    appThemeMode = ThemeMode.light;

    String? mySharedLocale =
        myServices.mySharedPreferences.getString("language");
    if (mySharedLocale == "ar") {
      language = const Locale("ar");
      appTheme = appThemeArabic;
    } else if (mySharedLocale == "en") {
      language = const Locale("en");
      appTheme = appThemeEnglish;
    } else {
      ///  مشان معرفة لغة الجهاز.
      appTheme = appThemeEnglish;
      myServices.mySharedPreferences.setString("appTheme", "en");

      language = Locale(Get.deviceLocale!.languageCode);
    }

    super.onInit();
  }
}
