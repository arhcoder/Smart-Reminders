import 'package:flutter/material.dart';

import 'package:smart_reminders/Theme/Theme.dart';
import 'package:smart_reminders/Responsive/Responsive.dart';

class PagesControllerDot extends StatelessWidget
{
    /// When [1]: The dot reflects the current page.
    /// When [2]: The dot reflects a passed page.
    /// When [3]: The dot reflects a no-passed page.
    
    final int state;

    const PagesControllerDot({Key? key, required this.state}) : super(key: key);

    @override
    Widget build(BuildContext context)
    {
        return Container
        (
            width: (state == 3)
            ? Responsive.pagesControllerDotSize - 2.80
            : Responsive.pagesControllerDotSize,
            decoration:
            (state == 1)? const BoxDecoration
            (
                shape: BoxShape.circle,
                color: AppColors.main
            ):
            (state == 2)? const BoxDecoration
            (
                shape: BoxShape.circle,
                color: AppColors.secundary
            ):
            BoxDecoration
            (
                shape: BoxShape.circle,
                color: AppColors.white,
                border: Border.all(
                    color: AppColors.secundary,
                    style: BorderStyle.solid,
                    width: 2.0
                )
            )
        );
    }
}