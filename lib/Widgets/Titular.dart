import 'package:flutter/material.dart';

import 'package:smart_reminders/Theme/Theme.dart';
import 'package:smart_reminders/Responsive/Responsive.dart';

import 'package:auto_size_text/auto_size_text.dart';

class Titular extends StatelessWidget
{
    /// Word into the title.
    final String title;

    /// If it is a big titular; normally with capital letters.
    final bool big;

    const Titular({Key? key, required this.title, this.big = false}) : super(key: key);

    @override
    Widget build(BuildContext context)
    {
        return Container
        (
            width: double.infinity,
            height: (big)
            ? Responsive.titularHeight + 8.0
            : Responsive.titularHeight,
            color: AppColors.main,

            child: Padding
            (
                padding: const EdgeInsets.all(10.0),
                child: Center
                (
                    child: AutoSizeText
                    (
                        title,
                        style: const TextStyle
                        (
                            fontFamily: "Gotham Medium",
                            fontSize: 18.0,
                            color: AppColors.white
                        ),
                        maxLines: 1,
                        maxFontSize: 18.0,
                        minFontSize: 12.0
                    )
                )
            )
        );
    }
}