import 'package:flutter/material.dart';

import 'app_colors.dart';

class AppTheme {
  static final ThemeData lightTheme = ThemeData(
    primaryColor: AppColors.lightPrimaryColor,
    scaffoldBackgroundColor: Colors.transparent,
    textTheme: const TextTheme(
      headlineLarge: TextStyle(
        fontSize: 24.0,
        color: AppColors.blackColor,
      ),
      headlineMedium: TextStyle(
        fontSize: 22.0,
        color: AppColors.blackColor,
      ),
      headlineSmall: TextStyle(
        fontSize: 20.0,
        color: AppColors.blackColor,
      ),
    ),
    fontFamily: 'ElMessiri',
    appBarTheme: const AppBarTheme(
      iconTheme: IconThemeData(
        size: 30,
        color: AppColors.blackColor,
      ),
      toolbarHeight: 80.0,
      elevation: 0.0,
      centerTitle: true,
      backgroundColor: Colors.transparent,
      titleTextStyle: TextStyle(
        fontSize: 40.0,
        fontFamily: 'ElMessiri',
        color: AppColors.blackColor,
        fontWeight: FontWeight.bold,
      ),
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      selectedIconTheme: IconThemeData(color: AppColors.blackColor),
      unselectedIconTheme: IconThemeData(color: AppColors.whiteColor),
      selectedLabelStyle: TextStyle(color: AppColors.blackColor),
      selectedItemColor: AppColors.blackColor,
      unselectedItemColor: AppColors.whiteColor,
    ),
  );

  static final ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: Colors.transparent,
    fontFamily: 'ElMessiri',
    appBarTheme: const AppBarTheme(
      toolbarHeight: 80.0,
      elevation: 0.0,
      centerTitle: true,
      backgroundColor: Colors.transparent,
      titleTextStyle: TextStyle(
        fontSize: 30.0,
        color: AppColors.blackColor,
        fontWeight: FontWeight.bold,
      ),
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      selectedIconTheme: IconThemeData(color: AppColors.blackColor),
      unselectedIconTheme: IconThemeData(color: AppColors.whiteColor),
      selectedLabelStyle: TextStyle(color: AppColors.blackColor),
      selectedItemColor: AppColors.blackColor,
      unselectedItemColor: AppColors.whiteColor,
    ),
  );
}
