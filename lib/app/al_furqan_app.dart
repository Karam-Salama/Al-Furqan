// ignore_for_file: file_names

import 'package:al_furqan/features/Home/screens/home_screen.dart';
import 'package:flutter/material.dart';

class ALFurqan extends StatelessWidget {
  const ALFurqan({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        HomeScreen.routeName: (_) => HomeScreen(),
      },
      initialRoute: HomeScreen.routeName,
    );
  }
}
