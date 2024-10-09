import '../../core/utils/assets.dart';
import '../providers/setting_provider.dart';
import '../settings/screens/setting_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Hadith/screens/hadith_tap_widget.dart';
import '../Quran/screens/quran_tap.dart';
import '../Radio/screens/radio_tap_widget.dart';
import '../Sebha/screens/sebha_tap_widget.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = '/homeScreen';
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;
  List taps = [
    QuranTap(),
    const HadithTap(),
    const SebhaTap(),
    const RadioTap(),
    const SettingScreen()
  ];
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    var settingProvider = Provider.of<SettingProvider>(context);

    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(settingProvider.getMainBackgroundColor()),
          fit: BoxFit.fill,
        ),
      ),
      child: Scaffold(
        appBar: AppBar(title: Text(AppLocalizations.of(context)!.appName)),
        body: taps[selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedIndex,
          onTap: (index) {
            setState(() {
              selectedIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              backgroundColor: theme.bottomNavigationBarTheme.backgroundColor,
              icon: const ImageIcon(AssetImage(
                Assets.assetsIconsMoshafIcon,
              )),
              label: AppLocalizations.of(context)!.quranTitle,
            ),
            BottomNavigationBarItem(
              backgroundColor: theme.bottomNavigationBarTheme.backgroundColor,
              icon: const ImageIcon(AssetImage(
                Assets.assetsIconsQuranIcon,
              )),
              label: AppLocalizations.of(context)!.hadithTitle,
            ),
            BottomNavigationBarItem(
              backgroundColor: theme.bottomNavigationBarTheme.backgroundColor,
              icon: const ImageIcon(AssetImage(
                Assets.assetsIconsSebhaIcon,
              )),
              label: AppLocalizations.of(context)!.sebhaTitle,
            ),
            BottomNavigationBarItem(
              backgroundColor: theme.bottomNavigationBarTheme.backgroundColor,
              icon: const ImageIcon(AssetImage(
                Assets.assetsIconsRadioIcon,
              )),
              label: AppLocalizations.of(context)!.radioTitle,
            ),
            BottomNavigationBarItem(
              backgroundColor: theme.bottomNavigationBarTheme.backgroundColor,
              icon: const Icon(Icons.settings),
              label: AppLocalizations.of(context)!.settingTitle,
            ),
          ],
        ),
      ),
    );
  }
}
