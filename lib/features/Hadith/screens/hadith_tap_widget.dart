// ignore_for_file: must_be_immutable, unused_local_variable

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../core/utils/app_colors.dart';
import '../../../core/utils/assets.dart';
import '../../Quran/widgets/header_item_widget.dart';
import '../models/hadith_model.dart';
import 'hadith_screen.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HadithTap extends StatefulWidget {
  const HadithTap({super.key});

  @override
  State<HadithTap> createState() => _HadithTapState();
}

class _HadithTapState extends State<HadithTap> {
  List<HadithModel> hadithList = [];

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    if (hadithList.isEmpty) {
      readHadithFile();
    }
    return Column(children: [
      Image.asset(Assets.assetsIconsHadithHeader, scale: 1.5),
      const SizedBox(height: 20.0),
      Container(
        color: AppColors.transparent,
        child: HeaderItem(
            theme: theme, text: AppLocalizations.of(context)!.ahadith),
      ),
      Expanded(
        child: ListView.separated(
          itemCount: hadithList.length,
          separatorBuilder: (_, index) {
            return Container(
              color: theme.primaryColor,
              width: double.infinity,
              height: 1.5,
            );
          },
          itemBuilder: (_, index) {
            return InkWell(
              onTap: () {
                Navigator.pushNamed(context, HadithDetailsScreen.routeName,
                    arguments: HadithModel(
                      content: hadithList[index].content,
                      title: hadithList[index].title,
                    ));
              },
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text(
                  hadithList[index].title,
                  textAlign: TextAlign.center,
                  style: theme.textTheme.headlineSmall,
                ),
              ),
            );
          },
        ),
      ),
    ]);
  }

  void readHadithFile() async {
    String fileContent =
        await rootBundle.loadString('assets/files/ahadeth.txt');
    List<HadithModel> ahadethOfFile = [];
    List<String> allHadith = fileContent.trim().split("#");
    for (int i = 0; i < allHadith.length; i++) {
      List<String> hadithLines = allHadith[i].trim().split('\n');
      String title = hadithLines[0];
      if (title.isEmpty) continue;
      hadithLines.removeAt(0);
      String content = hadithLines.join('\n');
      ahadethOfFile.add(HadithModel(title: title, content: content));
    }
    hadithList = ahadethOfFile;
    setState(() {});
  }
}
