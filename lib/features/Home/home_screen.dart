import 'package:al_furqan/core/utils/app_colors.dart';
import 'package:al_furqan/core/utils/assets.dart';
import 'package:flutter/material.dart';

import '../Hadith/screens/hadith_tap_widget.dart';
import '../Quran/screens/quran_tap.dart';
import '../Radio/screens/radio_tap_widget.dart';
import '../Sebha/screens/sebha_tap_widget.dart';

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
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(Assets.assetsImagesHomeLightBackground),
          fit: BoxFit.fill,
        ),
      ),
      child: Scaffold(
        appBar: AppBar(title: const Text('الفرقان')),
        body: taps[selectedIndex],
        bottomNavigationBar: Theme(
          data: Theme.of(context)
              .copyWith(canvasColor: AppColors.lightPrimaryColor),
          child: BottomNavigationBar(
            currentIndex: selectedIndex,
            onTap: (index) {
              setState(() {
                selectedIndex = index;
              });
            },
            items: const [
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage(
                  Assets.assetsIconsMoshafIcon,
                )),
                label: 'Quran',
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage(
                  Assets.assetsIconsQuranIcon,
                )),
                label: 'Hadith',
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage(
                  Assets.assetsIconsSebhaIcon,
                )),
                label: 'Sebha',
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage(
                  Assets.assetsIconsRadioIcon,
                )),
                label: 'Radio',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
