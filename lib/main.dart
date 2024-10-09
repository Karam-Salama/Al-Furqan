import 'app/al_furqan_app.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'features/providers/setting_provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (buildContext) => SettingProvider(),
    child: const ALFurqan(),
  ));
}
