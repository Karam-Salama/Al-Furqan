// ignore_for_file: avoid_types_as_parameter_names

import 'package:al_furqan/core/utils/app_colors.dart';
import 'package:al_furqan/features/settings/widgets/language_bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

import '../../providers/setting_provider.dart';
import '../widgets/theme_bottom_sheet.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});
  static const String routeName = '/setting-screen';

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    var settingProvider = Provider.of<SettingProvider>(context);

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            AppLocalizations.of(context)!.language,
            style: theme.textTheme.headlineMedium,
          ),
          InkWell(
            onTap: () {
              showLanguageBottomSheet();
            },
            child: Container(
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(
                border: Border.all(color: theme.primaryColor, width: 1),
                borderRadius: BorderRadius.circular(8),
                color: settingProvider.isDarkMode()
                    ? AppColors.darkBackgroundBottomNavBarColor
                    : AppColors.whiteColor,
              ),
              child: Text(
                AppLocalizations.of(context)!.englishLanguage,
                style: theme.textTheme.headlineMedium,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            AppLocalizations.of(context)!.theme,
            style: theme.textTheme.headlineMedium,
          ),
          InkWell(
            onTap: () {
              showThemeBottomSheet();
            },
            child: Container(
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(
                border: Border.all(color: theme.primaryColor, width: 1),
                borderRadius: BorderRadius.circular(8),
                color: settingProvider.isDarkMode()
                    ? AppColors.darkBackgroundBottomNavBarColor
                    : AppColors.whiteColor,
              ),
              child: Text(
                AppLocalizations.of(context)!.lightMode,
                style: theme.textTheme.headlineMedium,
              ),
            ),
          )
        ],
      ),
    );
  }

  void showLanguageBottomSheet() {
    showModalBottomSheet(
        context: context,
        // ignore: non_constant_identifier_names
        builder: (BuildContext) {
          return const LanguageBottomSheet();
        });
  }

  void showThemeBottomSheet() {
    showModalBottomSheet(
        context: context,
        // ignore: non_constant_identifier_names
        builder: (BuildContext) {
          return const ThemeBottomSheet();
        });
  }
}
