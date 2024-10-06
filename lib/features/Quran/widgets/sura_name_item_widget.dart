import 'package:flutter/material.dart';

class SuraNameItem extends StatelessWidget {
  final int suraAyat;
  final String suraName;
  final ThemeData theme;
  final VoidCallback? onPress;

  const SuraNameItem({
    super.key,
    required this.suraAyat,
    required this.suraName,
    required this.theme,
    required this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Row(
          children: [
            Expanded(
              child: Text(
                suraAyat.toString(),
                style: theme.textTheme.bodyLarge,
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 30,
              child: VerticalDivider(
                color: theme.primaryColor,
                thickness: 2.0,
              ),
            ),
            Expanded(
              child: Text(
                suraName,
                style: theme.textTheme.bodyLarge,
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
