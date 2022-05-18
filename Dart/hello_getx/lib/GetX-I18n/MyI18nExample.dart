import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LanguagesController extends GetxController {
  void changeLanguage(String languageCode, String countryCode) {
    Locale locale = Locale(languageCode, countryCode);
    Get.updateLocale(locale);
  }
}
