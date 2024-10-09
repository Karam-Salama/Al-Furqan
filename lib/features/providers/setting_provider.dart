import 'package:flutter/material.dart';

import '../../core/utils/assets.dart';

class SettingProvider extends ChangeNotifier{
  String currentLanguage = 'en';
  ThemeMode currentTheme = ThemeMode.light;

  void changeLanguage(String newLanguage){
    if(newLanguage == currentLanguage) return;
    currentLanguage = newLanguage;
    notifyListeners();
  }

  void changeTheme(ThemeMode newTheme){
    if(newTheme == currentTheme) return;
    currentTheme = newTheme;
    notifyListeners();
  }
  bool isDarkMode(){
    return currentTheme == ThemeMode.dark;
  }
  String getMainBackgroundColor(){
    return isDarkMode() ? Assets.assetsImagesHomeDarkBackground : Assets.assetsImagesHomeLightBackground;
  }
}