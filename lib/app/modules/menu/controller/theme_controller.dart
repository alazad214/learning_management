import 'package:get/get.dart';

class ThemeController extends GetxController {
  var islanguage = false.obs;
  var istheme = false.obs;

  void languageSwitch(bool value) {
    islanguage.value = value;
  }

  void themeSwitch(bool value) {
    istheme.value = value;
  }
}
