import 'package:get/get.dart';

class MyTranslated extends Translations {
  @override
  // TODO: implement keys
  Map<String, Map<String, String>> get keys => {
        "ar": {
          "hi": "مرحبا",
          "Choose Language": "اختر اللغة",
          "ar": "  اللغة عربية  ",
          "en": "  اللغة انجليزية ",
          "": "",
        },
        "en": {
          "hi": "hi",
          "Choose Language": "Choose Language",
          "ar": "ar",
          "en": "en",
          "": "",
        }
      };
}
