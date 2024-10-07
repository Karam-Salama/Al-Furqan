import 'package:flutter/material.dart';

class QuranTapListViewItem extends StatelessWidget {
  const QuranTapListViewItem(
      {super.key, required this.text, required this.theme});
  final String text;
  final ThemeData theme;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        height: 50,
        child: Center(
          child: Text(
            text,
            style: theme.textTheme.headlineSmall,
          ),
        ),
      ),
    );
  }
}
