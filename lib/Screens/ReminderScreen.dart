import 'package:flutter/material.dart';

import 'package:smart_reminders/generated/l10n.dart';

import 'package:smart_reminders/Theme/Theme.dart';
import 'package:smart_reminders/Responsive/Responsive.dart';

import 'package:smart_reminders/Widgets/Titular.dart';

class ReminderScreen extends StatelessWidget
{
    const ReminderScreen({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context)
    {
        return Scaffold
        (
            backgroundColor: AppColors.background,

            body: Column
            (
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,

                children:
                [
                    const Padding
                    (
                        padding: EdgeInsets.symmetric(horizontal: Responsive.appHorizontalPadding),
                        child: Titular(title: "Mi Recordatorio")
                    ),
                    const SizedBox(height: Responsive.appVerticalPadding),
                    Container
                    (
                        width: MediaQuery.of(context).size.width - 2 * Responsive.appHorizontalPadding,
                        height: MediaQuery.of(context).size.width,

                        decoration: BoxDecoration
                        (
                            color: AppColors.white,
                            borderRadius: BorderRadius.circular(20.0),
                            boxShadow:
                            [
                                BoxShadow
                                (
                                    color: Colors.grey.withOpacity(0.54),
                                    offset: const Offset(0, 8),
                                    blurRadius: 24.0,
                                    spreadRadius: -6
                                )
                            ]
                        )
                    ),
                    const SizedBox(height: Responsive.appVerticalPadding),
                    Padding
                    (
                        padding: const EdgeInsets.symmetric(horizontal: Responsive.appHorizontalPadding),
                        child: Container
                        (
                            width: double.infinity,
                            height: Responsive.titularHeight,
                            decoration: BoxDecoration
                            (
                                color: AppColors.main,
                                borderRadius: BorderRadius.circular(40.0)
                            )
                        )
                    )
                ]
            )
        );
    }
}