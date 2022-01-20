import 'package:flutter/material.dart';

import 'package:smart_reminders/generated/l10n.dart';

import 'package:smart_reminders/Theme/Theme.dart';
import 'package:smart_reminders/Responsive/Responsive.dart';

import 'package:smart_reminders/Widgets/Header.dart';
import 'package:smart_reminders/Widgets/Titular.dart';
import 'package:smart_reminders/Widgets/Reminder.dart';

class HomeScreen extends StatelessWidget
{
    const HomeScreen({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context)
    {
        return Scaffold
        (
            appBar: const Header(),

            backgroundColor: AppColors.background,

            body: Column
            (
                children:
                [
                    const SizedBox(height: Responsive.appTopMargin),
                    Padding
                    (
                        padding: const EdgeInsets.symmetric(horizontal: Responsive.appHorizontalPadding),
                        child: Titular(title: S.current.home_title),
                    ),

                    Expanded
                    (
                        child: ListView
                        (
                            // clipBehavior: Clip.none,
                            padding: const EdgeInsets.symmetric(horizontal: Responsive.appHorizontalPadding),
                            physics: const BouncingScrollPhysics(),
                            children: const
                            [
                                Reminder(),
                                Reminder(),
                                Reminder(),
                                Reminder(),
                                Reminder(),
                                Reminder(),
                                Reminder(),
                                Reminder(),
                                SizedBox(height: Responsive.remindersMargin)
                            ]
                        )
                    )
                ]
            ),

            floatingActionButton: Padding
            (
                padding: const EdgeInsets.only(
                    right: Responsive.appHorizontalPadding - 32.0,
                    bottom: Responsive.appVerticalPadding - 52.0
                ),
                child: FloatingActionButton
                (
                    backgroundColor: AppColors.main,
                    child: const Icon(Icons.add_rounded, color: AppColors.white, size: 34.0),
                    tooltip: S.current.home_add,
                    onPressed: ()
                    {
                        Navigator.of(context).pushNamed("/program");
                    }
                )
            )
        );
    }
}