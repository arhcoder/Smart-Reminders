import 'package:flutter/material.dart';

import 'package:smart_reminders/generated/l10n.dart';

import 'package:smart_reminders/Theme/Theme.dart';

import 'package:smart_reminders/Widgets/Header.dart';
import 'package:smart_reminders/Panels/ProgrammingPanel.dart';

class ProgramReminderScreen extends StatelessWidget
{
    /// If true, the screen will create a set of a new reminder.
    /// If false, it will set a screen to edit an existent reminder.
    bool isNewReminder;

    ProgramReminderScreen({Key? key, this.isNewReminder = true}) : super(key: key);

    @override
    Widget build(BuildContext context)
    {
        return Scaffold
        (
            appBar: Header
            (
                mini: true,
                title: (isNewReminder)
                ? S.current.program_header_new
                : S.current.program_header_edit
            ),

            backgroundColor: AppColors.background,
            
            body: const ProgrammingPanel()
        );
    }
}