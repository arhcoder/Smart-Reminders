import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:smart_reminders/Theme/Theme.dart';
import 'package:smart_reminders/Responsive/Responsive.dart';

import 'package:smart_reminders/Providers/AppProvider.dart';
import 'package:smart_reminders/generated/l10n.dart';

import 'package:smart_reminders/Widgets/Block.dart';
import 'package:smart_reminders/Widgets/CalendarButton.dart';

class WeekBlock extends StatelessWidget
{
    const WeekBlock({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context)
    {
        /// List of AppProvider WEEKS REMINDER.
        List <int> daysWeeksOnTheProvider =
        Provider.of<AppProvider>(context, listen: false).REMINDER["WEEKS"];

        /// List of selected days of the week.
        /// This is a list of 8 - 1 booleans.
        /// Each boolean represents each week button,
        /// and if it is selected or not.
        /// It is made to optimizate execution time to
        /// detect the buttons for bring a initial
        /// selection value.
        List <bool> selectedButtons = List.filled(8 - 1, false);

        // Activates the buttons according to the selected dWeeks.
        for (int i = 0; i < daysWeeksOnTheProvider.length; i++)
        {
            if (daysWeeksOnTheProvider[i] != 0)
            {
                selectedButtons[daysWeeksOnTheProvider[i] - 1] = true;
            }
        }

        // List of month weeks //
        List <Widget> weeksButtons =
        [
            CalendarButton
            (
                text: S.current.program_week_01.toUpperCase(),
                reminderKey: "WEEKS",
                value: 1,
                isSelected: selectedButtons[1 - 1]
            ),
            CalendarButton
            (
                text: S.current.program_week_02.toUpperCase(),
                reminderKey: "WEEKS",
                value: 2,
                isSelected: selectedButtons[2 - 1]
            ),
            CalendarButton
            (
                text: S.current.program_week_03.toUpperCase(),
                reminderKey: "WEEKS",
                value: 3,
                isSelected: selectedButtons[3 - 1]
            ),
            CalendarButton
            (
                text: S.current.program_week_04.toUpperCase(),
                reminderKey: "WEEKS",
                value: 4,
                isSelected: selectedButtons[4 - 1]
            ),
            CalendarButton
            (
                text: S.current.program_week_05.toUpperCase(),
                reminderKey: "WEEKS",
                value: 5,
                isSelected: selectedButtons[5 - 1]
            ),
            CalendarButton
            (
                text: S.current.program_week_06.toUpperCase(),
                reminderKey: "WEEKS",
                value: 6,
                isSelected: selectedButtons[6 - 1]
            ),
            CalendarButton
            (
                text: S.current.program_week_07.toUpperCase(),
                reminderKey: "WEEKS",
                value: 7,
                isSelected: selectedButtons[7 - 1]
            )
        ];


        return Block
        (
            child: Container
            (
                color: AppColors.background,
                
                child: GridView
                (
                    physics: const BouncingScrollPhysics(),
                    clipBehavior: Clip.none,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount
                    (
                        crossAxisCount: 2,
                        crossAxisSpacing: 10.0,
                        mainAxisSpacing: 10.0,
                        childAspectRatio: (MediaQuery.of(context).size.width) * 4 /
                        (MediaQuery.of(context).size.width - 2 * Responsive.appHorizontalPadding - 14.0) / 3
                    ),
                    children: weeksButtons
                )
            )
        );
    }
}