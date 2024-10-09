// ignore_for_file: file_names

import 'package:al_furqan/features/Hadith/screens/hadith_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

import '../core/utils/app_theme.dart';
import '../features/Home/home_screen.dart';
import '../features/Quran/screens/surah_screen.dart';
import '../features/providers/setting_provider.dart';

class ALFurqan extends StatelessWidget {
  const ALFurqan({super.key});

  @override
  Widget build(BuildContext context) {
    var settingProvider = Provider.of<SettingProvider>(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: settingProvider.currentTheme,
      routes: {
        HomeScreen.routeName: (_) => const HomeScreen(),
        SurahDetailsScreen.routeName: (_) => const SurahDetailsScreen(),
        HadithDetailsScreen.routeName: (_) => const HadithDetailsScreen(),
      },
      initialRoute: HomeScreen.routeName,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      locale: Locale(settingProvider.currentLanguage),
    );
  }
}
