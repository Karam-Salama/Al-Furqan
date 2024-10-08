import 'package:flutter/material.dart';

import '../../../core/utils/app_colors.dart';
import '../../../core/utils/assets.dart';

class SebhaTap extends StatefulWidget {
  const SebhaTap({super.key});

  @override
  State<SebhaTap> createState() => _SebhaTapState();
}

class _SebhaTapState extends State<SebhaTap> {
  int currentIndex = 0;
  int numberOfClicks = 0;
  var angle = 0.0;
  var adiaa = [
    "سبحان الله  ",
    " الحمد لله ",
    "لا اله الا الله ",
    "الله اكبر ",
  ];
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(Assets.assetsImagesHomeLightBackground),
          fit: BoxFit.fill,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 40,
              ),
              Stack(
                children: [
                  Container(
                    height: 250,
                    margin: const EdgeInsets.only(top: 80),
                    child: Transform.rotate(
                      angle: angle,
                      child: Image.asset(Assets.assetsImagesBodyOfSebha),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                      left: 90,
                      right: 40,
                    ),
                    child: SizedBox(
                      height: 170,
                      child: Image.asset(Assets.assetsImagesHeadOfSebha),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Text("عدد التسبيحات", style: theme.textTheme.headlineMedium),
              const SizedBox(height: 20),
              Container(
                width: 70,
                height: 70,
                alignment: Alignment.center,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: AppColors.lightPrimaryColor.withOpacity(0.5),
                ),
                child: Text(
                  "$numberOfClicks",
                  style: theme.textTheme.headlineMedium,
                ),
              ),
              const SizedBox(height: 20),
              FilledButton(
                style: FilledButton.styleFrom(
                  backgroundColor: AppColors.lightPrimaryColor,
                ),
                onPressed: () {
                  numberOfClicks++;
                  angle += 7;
                  if (numberOfClicks == 33) {
                    numberOfClicks = 0;
                    currentIndex++;
                    currentIndex = currentIndex % 4;
                  }
                  setState(() {});
                },
                child: Text(
                  adiaa[currentIndex],
                  style: theme.textTheme.headlineMedium,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
