import 'package:flutter/material.dart';

import 'package:smart_reminders/generated/l10n.dart';

import 'package:smart_reminders/Theme/Theme.dart';
import 'package:smart_reminders/Responsive/Responsive.dart';

import 'package:smart_reminders/Widgets/Titular.dart';
import 'package:smart_reminders/Widgets/ReminderBox.dart';

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
                    // Reminder titular //
                    const SizedBox(height: Responsive.appVerticalPadding - Responsive.twentyConstant / 2),
                    Padding
                    (
                        padding: const EdgeInsets.symmetric(horizontal: Responsive.appHorizontalPadding),
                        child: Titular(title: S.current.reminder_titular)
                    ),
                    const SizedBox(height: Responsive.appVerticalPadding - Responsive.twentyConstant / 1.4),

                    // Reminder Box //
                    const ReminderBox(),

                    // Buttons Panel //
                    const SizedBox(height: Responsive.appVerticalPadding - Responsive.twentyConstant),
                    Padding
                    (
                        padding: const EdgeInsets.symmetric(horizontal: Responsive.appHorizontalPadding),
                        child: Container
                        (
                            width: double.infinity,
                            height: Responsive.titularHeight,
                            child: Row
                            (
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children:
                                [
                                    PanelButton
                                    (
                                        icon: Icons.delete_outline_rounded,
                                        onTap: (){print("Delete");}
                                    ),
                                    PanelButton
                                    (
                                        icon: Icons.pause_rounded,
                                        onTap: (){print("Pause");}
                                    ),
                                    PanelButton
                                    (
                                        icon: Icons.edit_outlined,
                                        onTap: (){print("Edit");}
                                    ),
                                ]
                            )
                        )
                    )
                ]
            )
        );
    }
}

class PanelButton extends StatelessWidget
{
    final IconData icon;
    final VoidCallback onTap;

    const PanelButton({Key? key, required this.icon, required this.onTap}) : super(key: key);

    @override
    Widget build(BuildContext context)
    {
        return Container
        (
            child: GestureDetector
            (
                child: Padding
                (
                    padding: const EdgeInsets.only(left: 12.0),
                    child: Icon
                    (
                        icon,
                        color: AppColors.textDark,
                        size: Responsive.titularHeight * 0.6
                    )
                ),
                onTap: onTap
            )
        );
    }
}