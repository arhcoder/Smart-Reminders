import 'package:flutter/material.dart';

import 'package:smart_reminders/Theme/Theme.dart';

import 'package:smart_reminders/Widgets/Block.dart';
import 'package:smart_reminders/Widgets/CalendarButton.dart';

class FrecuencyBlock extends StatelessWidget
{
    const FrecuencyBlock({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context)
    {
        return Block
        (
            child: Container
            (
                color: AppColors.background,
                
                child: GridView
                (
                    physics: null,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount
                    (
                        crossAxisCount: 2,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10
                    ),
                    /*children:
                    [
                        CalendarButton(text: "ANUAL", value: 1, height: 100.0),
                        CalendarButton(text: "MENSUAL", value: 1, height: 100.0),
                        CalendarButton(text: "SEMANAL", value: 1, height: 100.0),
                        CalendarButton(text: "DIARIO", value: 1, height: 100.0),
                    ]*/
                )
            )
        );
    }
}