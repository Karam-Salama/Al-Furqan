import 'package:flutter/material.dart';

import 'header_item_widget.dart';

class HeaderRow extends StatelessWidget {
  final ThemeData theme;

  const HeaderRow({super.key, required this.theme});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        HeaderItem(
          theme: theme,
          text: "عدد الآيات", // Ayat Count Header
        ),
        Container(
          color: theme.primaryColor,
          height: 50,
          width: 2,
        ),
        HeaderItem(
          theme: theme,
          text: "اسم السورة", // Sura Name Header
        ),
      ],
    );
  }
}
