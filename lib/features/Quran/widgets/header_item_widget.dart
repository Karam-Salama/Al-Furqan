import 'package:flutter/material.dart';

class HeaderItem extends StatelessWidget {
  final String text;
  final ThemeData theme;

  const HeaderItem({super.key, required this.text, required this.theme});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 50,
        decoration: BoxDecoration(
          border: Border.symmetric(
            horizontal: BorderSide(
              color: theme.primaryColor,
              width: 2.0,
            ),
          ),
        ),
        child: Center(
          child: Text(
            text,
            style: theme.textTheme.headlineMedium,
          ),
        ),
      ),
    );
  }
}
