import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeController extends GetxController {
  String themeKey = 'isDark';
  RxBool isDarkMode = false.obs;

  void toggoleTheme() async {
    final prefs = await SharedPreferences.getInstance();
    isDarkMode.value = !isDarkMode.value;
    prefs.setBool(themeKey, isDarkMode.value);
    Get.changeThemeMode(isDarkMode.value ? ThemeMode.dark : ThemeMode.light);
  }

  void saveTheme() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    isDarkMode.value = prefs.getBool(themeKey) ?? false;
    Get.changeThemeMode(isDarkMode.value ? ThemeMode.dark : ThemeMode.light);
  }

  @override
  void onInit() {
    saveTheme();
    super.onInit();
  }
}
