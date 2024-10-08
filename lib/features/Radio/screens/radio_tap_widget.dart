import 'package:flutter/material.dart';

import '../../../core/utils/assets.dart';

class RadioTap extends StatelessWidget {
  const RadioTap({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(Assets.assetsIconsRadio),
        ],
      ),
    );
  }
}
