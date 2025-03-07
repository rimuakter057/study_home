

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ThemeController extends GetxController {
  bool isDarkMode = false;

  void checkTheme() {
    isDarkMode = Theme.of(Get.context!).brightness == Brightness.dark;
    update();}

  void toggleTheme() {
    isDarkMode = !isDarkMode;
    Get.changeThemeMode(isDarkMode ? ThemeMode.dark : ThemeMode.light);
    update();}

}
