import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:smart_reminders/Theme/Theme.dart';
import 'package:smart_reminders/Responsive/Responsive.dart';

import 'package:smart_reminders/Providers/AppProvider.dart';
import 'package:smart_reminders/generated/l10n.dart';

import 'package:smart_reminders/Widgets/Block.dart';
import 'package:smart_reminders/Widgets/CalendarButton.dart';

import 'package:smart_reminders/Widgets/Block.dart';

class MonthsBlock extends StatelessWidget
{
    const MonthsBlock({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context)
    {
        /// List of AppProvider MONTHS REMINDER.
        List <int> monthsOnTheProvider =
        Provider.of<AppProvider>(context, listen: false).REMINDER["MONTHS"];

        /// List of selected months.
        /// This is a list of 12 booleans.
        /// Each boolean represents each month button,
        /// and if it is selected or not.
        /// It is made to optimizate execution time to
        /// detect the buttons for bring a initial
        /// selection value.
        List <bool> selectedButtons = List.filled(12, false);

        // Activa los botones según los meses seleccionados.
        for (int i = 0; i < monthsOnTheProvider.length; i++)
        {
            if (monthsOnTheProvider[i] != 0)
            {
                selectedButtons[monthsOnTheProvider[i] - 1] = true;
            }
        }

        // List of month buttons //
        List <Widget> monthsButtons =
        [
            CalendarButton
            (
                text: S.current.program_month_01,
                reminderKey: "MONTHS",
                value: 1,
                isSelected: selectedButtons[1 - 1]
            ),
            CalendarButton
            (
                text: S.current.program_month_02,
                reminderKey: "MONTHS",
                value: 2,
                isSelected: selectedButtons[2 - 1]
            ),
            CalendarButton
            (
                text: S.current.program_month_03,
                reminderKey: "MONTHS",
                value: 3,
                isSelected: selectedButtons[3 - 1]
            ),
            CalendarButton
            (
                text: S.current.program_month_04,
                reminderKey: "MONTHS",
                value: 4,
                isSelected: selectedButtons[4 - 1]
            ),
            CalendarButton
            (
                text: S.current.program_month_05,
                reminderKey: "MONTHS",
                value: 5,
                isSelected: selectedButtons[5 - 1]
            ),
            CalendarButton
            (
                text: S.current.program_month_06,
                reminderKey: "MONTHS",
                value: 6,
                isSelected: selectedButtons[6 - 1]
            ),
            CalendarButton
            (
                text: S.current.program_month_07,
                reminderKey: "MONTHS",
                value: 7,
                isSelected: selectedButtons[7 - 1]
            ),
            CalendarButton
            (
                text: S.current.program_month_08,
                reminderKey: "MONTHS",
                value: 8,
                isSelected: selectedButtons[8 - 1]
            ),
            CalendarButton
            (
                text: S.current.program_month_09,
                reminderKey: "MONTHS",
                value: 9,
                isSelected: selectedButtons[9 - 1]
            ),
            CalendarButton
            (
                text: S.current.program_month_10,
                reminderKey: "MONTHS",
                value: 10,
                isSelected: selectedButtons[10 - 1]
            ),
            CalendarButton
            (
                text: S.current.program_month_11,
                reminderKey: "MONTHS",
                value: 11,
                isSelected: selectedButtons[11 - 1]
            ),
            CalendarButton
            (
                text: S.current.program_month_12,
                reminderKey: "MONTHS",
                value: 12,
                isSelected: selectedButtons[12 - 1]
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
                        crossAxisCount: 3,
                        crossAxisSpacing: 10.0,
                        mainAxisSpacing: 10.0,
                        childAspectRatio: (MediaQuery.of(context).size.width) * 4 /
                        (MediaQuery.of(context).size.width - 2 * Responsive.appHorizontalPadding + 34.0) / 4
                    ),
                    children: monthsButtons
                )
            )
        );
    }
}