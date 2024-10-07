import 'package:flutter/material.dart';

import 'list_view_item_widget.dart';

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
    return InkWell(
      onTap: onPress,
      child: Row(
        children: [
          QuranTapListViewItem(
            text: suraAyat.toString(),
            theme: theme,
          ),
          Container(
            color: theme.primaryColor,
            height: 50,
            width: 2,
          ),
          QuranTapListViewItem(
            text: suraName,
            theme: theme,
          )
        ],
      ),
    );
  }
}
