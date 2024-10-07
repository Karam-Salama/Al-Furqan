// ignore_for_file: file_names

import 'package:flutter/material.dart';

import '../core/utils/app_theme.dart';
import '../features/Home/home_screen.dart';
import '../features/Quran/screens/surah_screen.dart';

class ALFurqan extends StatelessWidget {
  const ALFurqan({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      routes: {
        HomeScreen.routeName: (_) => const HomeScreen(),
        SurahDetailsScreen.routeName: (_) => const SurahDetailsScreen(),
      },
      initialRoute: HomeScreen.routeName,
    );
  }
}
