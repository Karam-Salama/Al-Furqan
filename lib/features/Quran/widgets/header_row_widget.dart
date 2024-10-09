import 'package:flutter/material.dart';

import 'header_item_widget.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HeaderRow extends StatelessWidget {
  final ThemeData theme;

  const HeaderRow({super.key, required this.theme});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        HeaderItem(
          theme: theme,
          text: AppLocalizations.of(context)!.suraName,
        ),
        Container(
          color: theme.primaryColor,
          height: 50,
          width: 2,
        ),
        HeaderItem(
          theme: theme,
          text: AppLocalizations.of(context)!.ayatCount,
        ),
      ],
    );
  }
}
