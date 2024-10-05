import 'package:al_furqan/core/utils/app_colors.dart';
import 'package:al_furqan/core/utils/assets.dart';
import 'package:flutter/material.dart';

import '../widgets/hadith_tap_widget.dart';
import '../widgets/quran_tap_widget.dart';
import '../widgets/radio_tap_widget.dart';
import '../widgets/sebha_tap_widget.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = '/homeScreen';
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;
  List taps = const [
    QuranTap(),
    HadithTap(),
    SebhaTap(),
    RadioTap(),
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
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          toolbarHeight: MediaQuery.of(context).size.height * 0.08,
          elevation: 0.0,
          backgroundColor: Colors.transparent,
          centerTitle: true,
          title: const Text(
            'AL-Furqan',
            style: TextStyle(
              fontSize: 30.0,
              color: AppColors.blackColor,
              fontWeight: FontWeight.bold,
              fontFamily: 'ElMessiri',
            ),
          ),
        ),
        body: taps[selectedIndex],
        bottomNavigationBar: Theme(
          data: Theme.of(context)
              .copyWith(canvasColor: AppColors.lightAccentColor),
          child: BottomNavigationBar(
            currentIndex: selectedIndex,
            onTap: (index) {
              setState(() {
                selectedIndex = index;
              });
            },
            selectedIconTheme: const IconThemeData(color: AppColors.blackColor),
            unselectedIconTheme:
                const IconThemeData(color: AppColors.whiteColor),
            selectedLabelStyle: const TextStyle(color: AppColors.blackColor),
            selectedItemColor: AppColors.blackColor,
            unselectedItemColor: AppColors.whiteColor,
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
