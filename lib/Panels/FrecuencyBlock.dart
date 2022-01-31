import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:smart_reminders/Theme/Theme.dart';
import 'package:smart_reminders/Responsive/Responsive.dart';

import 'package:smart_reminders/Providers/AppProvider.dart';
import 'package:smart_reminders/generated/l10n.dart';

import 'package:smart_reminders/Widgets/Block.dart';
import 'package:smart_reminders/Widgets/CalendarButton.dart';

class FrecuencyBlock extends StatefulWidget
{
    const FrecuencyBlock({Key? key}) : super(key: key);

    @override
    State <FrecuencyBlock> createState() => FrecuencyBlockState();
}

class FrecuencyBlockState extends State <FrecuencyBlock>
{
    @override
    Widget build(BuildContext context)
    {
        // Reminder Kind from AppProvider.
        int reminderKind = Provider.of<AppProvider>(context, listen: false).REMINDER["KIND"];

        // List of reminder kind buttons //
        List <Widget> kindButtons =
        [
            CalendarButton
            (
                text: S.current.program_kind_yearly_card,
                reminderKey: "KIND",
                value: 1,
                isSelected: reminderKind == 1? true: false,
                parentSetStateFunction: () {setState((){});}
            ),
            CalendarButton
            (
                text: S.current.program_kind_monthly_card,
                reminderKey: "KIND",
                value: 2,
                isSelected: reminderKind == 2? true: false,
                parentSetStateFunction: (){setState((){});}
            ),
            CalendarButton
            (
                text: S.current.program_kind_weekly_card,
                reminderKey: "KIND",
                value: 3,
                isSelected: reminderKind == 3? true: false,
                parentSetStateFunction: (){setState((){});}
            ),
            CalendarButton
            (
                text: S.current.program_kind_daily_card,
                reminderKey: "KIND",
                value: 4,
                isSelected: reminderKind == 4? true: false,
                parentSetStateFunction: (){setState((){});}
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
                        (MediaQuery.of(context).size.width - 2 * Responsive.appHorizontalPadding + 34.0) / 4
                    ),
                    children: kindButtons
                )
            )
        );
    }
}