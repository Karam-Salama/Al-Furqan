import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

import '../../providers/setting_provider.dart';

class ThemeBottomSheet extends StatefulWidget {
  const ThemeBottomSheet({super.key});

  @override
  State<ThemeBottomSheet> createState() => _ThemeBottomSheetState();
}

class _ThemeBottomSheetState extends State<ThemeBottomSheet> {
  @override
  Widget build(BuildContext context) {
    var settingProvider = Provider.of<SettingProvider>(context);

    return Container(
      padding: const EdgeInsets.all(18),
      child: Column(
        children: [
          const SizedBox(height: 20),
          InkWell(
            onTap: () {
              settingProvider.changeTheme(ThemeMode.light); 
            },
            child: settingProvider.isDarkMode()
                ?  getUnSelectedItem(AppLocalizations.of(context)!.lightMode)
                : getSelectedItem(AppLocalizations.of(context)!.lightMode),
          ),
          const SizedBox(height: 20),
          InkWell(
            onTap: () {
              settingProvider.changeTheme(ThemeMode.dark);
            },
            child: settingProvider.isDarkMode()
                ? getSelectedItem(AppLocalizations.of(context)!.darkMode)
                : getUnSelectedItem(AppLocalizations.of(context)!.darkMode),
          ),
        ],
      ),
    );
  }

  Widget getSelectedItem(String title) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title,
            style: Theme.of(context)
                .textTheme
                .headlineMedium
                ?.copyWith(color: Theme.of(context).primaryColor)),
        Icon(Icons.check, color: Theme.of(context).primaryColor),
      ],
    );
  }

  Widget getUnSelectedItem(String title) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title, style: Theme.of(context).textTheme.headlineMedium),
      ],
    );
  }
}
