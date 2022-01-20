import 'package:flutter/material.dart';

import 'package:smart_reminders/Theme/Theme.dart';
import 'package:smart_reminders/Responsive/Responsive.dart';

class Reminder extends StatelessWidget
{
    const Reminder({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context)
    {
        return GestureDetector
        (
            onTap: ()
            {
                Navigator.of(context).pushNamed("/reminder");
            },
            
            child: Column
            (
                children:
                [
                    const SizedBox(height: Responsive.remindersMargin),
                    Container
                    (
                        width: double.infinity,
                        height: Responsive.remindersHeight,

                        decoration: BoxDecoration
                        (
                            color: AppColors.white,
                            borderRadius: BorderRadius.circular(20.0 - 2.0),
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
                    )
                ]
            )
        );
    }
}