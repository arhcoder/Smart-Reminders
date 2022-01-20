import 'package:flutter/material.dart';

import 'package:smart_reminders/Theme/Theme.dart';
import 'package:smart_reminders/Responsive/Responsive.dart';

import 'package:smart_reminders/Widgets/Titular.dart';

class ProgrammingPanel extends StatefulWidget
{
    const ProgrammingPanel({Key? key}) : super(key: key);

    @override
    ProgrammingPanelState createState() => ProgrammingPanelState();
}

class ProgrammingPanelState extends State <ProgrammingPanel>
{
    @override
    Widget build(BuildContext context)
    {
        return Container
        (
            width: double.infinity,
            height: double.infinity,

            child: Center
            (
                child: Column
                (
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,

                    children:
                    [
                        Container
                        (
                            width: MediaQuery.of(context).size.width - 2 * Responsive.appHorizontalPadding,
                            height: Responsive.appTopMargin + Responsive.titularHeight + 10.0,
                            color: AppColors.secundary
                        ),

                        Container
                        (
                            // color: AppColors.box,
                            width: MediaQuery.of(context).size.width - 2 * Responsive.appHorizontalPadding,
                            height: MediaQuery.of(context).size.width - 2 * Responsive.appHorizontalPadding + 20.0,

                            child: Expanded
                            (
                                child: PageView
                                (
                                    physics: const BouncingScrollPhysics(),
                                    children:
                                    [
                                        Container
                                        (
                                            color: Colors.deepPurple
                                        ),
                                        Container
                                        (
                                            color: Colors.deepOrange
                                        ),
                                        Container
                                        (
                                            color: Colors.green
                                        )
                                    ]
                                )
                            )
                        ),

                        Container
                        (
                            width: MediaQuery.of(context).size.width - 2 * Responsive.appHorizontalPadding,
                            height: Responsive.appTopMargin + Responsive.titularHeight + 10.0,
                            color: AppColors.secundary
                        )
                    ]
                )
            )
        );
    }
}