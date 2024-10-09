import '../../providers/setting_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

import '../../../core/utils/assets.dart';
import '../models/surah_model.dart';

class SurahDetailsScreen extends StatefulWidget {
  static const String routeName = '/surah-screen';

  const SurahDetailsScreen({super.key});

  @override
  State<SurahDetailsScreen> createState() => _SurahDetailsScreenState();
}

class _SurahDetailsScreenState extends State<SurahDetailsScreen> {
  List<String> verses = [];
  late SurahModel args;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    args = ModalRoute.of(context)!.settings.arguments as SurahModel;
    var settingProvider = Provider.of<SettingProvider>(context);

    if (verses.isEmpty) {
      readFile(args.index);
    }
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(settingProvider.isDarkMode()
              ? Assets.assetsImagesHomeDarkBackground
              : Assets.assetsImagesHomeLightBackground),
          fit: BoxFit.fill,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Text(
            args.suraName,
            style: theme.textTheme.headlineLarge!.copyWith(fontSize: 30.0),
          ),
        ),
        body: verses.isEmpty
            ? Center(
                child: CircularProgressIndicator(
                color: theme.primaryColor,
              ))
            : Center(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20.0, 70.0, 20.0, 20.0),
                  child: Container(
                    padding: const EdgeInsets.all(20.0),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.8),
                      borderRadius: BorderRadius.circular(20.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          blurRadius: 10.0,
                          offset: const Offset(0, 5),
                        ),
                      ],
                    ),
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemBuilder: (_, index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: Text(
                            verses[index],
                            textAlign: TextAlign.center,
                            style: theme.textTheme.headlineMedium!.copyWith(
                              color: Colors.black87,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        );
                      },
                      itemCount: verses.length,
                    ),
                  ),
                ),
              ),
      ),
    );
  }

  void readFile(int index) async {
    String contents =
        await rootBundle.loadString('assets/files/${index + 1}.txt');
    List<String> lines = contents.split('\r\n');
    setState(() {
      verses = lines;
    });
  }
}
