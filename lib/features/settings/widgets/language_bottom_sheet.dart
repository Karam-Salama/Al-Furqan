import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

import '../../providers/setting_provider.dart';

class LanguageBottomSheet extends StatefulWidget {
  const LanguageBottomSheet({super.key});

  @override
  State<LanguageBottomSheet> createState() => _LanguageBottomSheetState();
}

class _LanguageBottomSheetState extends State<LanguageBottomSheet> {
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
              settingProvider.changeLanguage('en');
            },
            child: settingProvider.currentLanguage == 'en'
                ? getSelectedItem(
                    AppLocalizations.of(context)!.englishLanguage,
                  )
                : getUnSelectedItem(
                    AppLocalizations.of(context)!.englishLanguage,
                  ),
          ),
          const SizedBox(height: 20),
          InkWell(
            onTap: () {
              settingProvider.changeLanguage('ar');
            },
            child: settingProvider.currentLanguage == 'ar'
                ? getSelectedItem(
                    AppLocalizations.of(context)!.arabicLanguage,
                  )
                : getUnSelectedItem(
                    AppLocalizations.of(context)!.arabicLanguage,
                  ),
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
