import 'package:flutter/material.dart';

import 'package:smart_reminders/Theme/Theme.dart';
import 'package:smart_reminders/Responsive/Responsive.dart';

import 'package:smart_reminders/Widgets/Titular.dart';
import 'package:smart_reminders/Widgets/ViewsController.dart';

class ProgrammingPanel extends StatefulWidget
{
    const ProgrammingPanel({Key? key}) : super(key: key);

    @override
    ProgrammingPanelState createState() => ProgrammingPanelState();
}

class ProgrammingPanelState extends State <ProgrammingPanel>
{
    String currentTitle = "Frecuencia";

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
                            // width: MediaQuery.of(context).size.width - 2 * Responsive.appHorizontalPadding,
                            // height: Responsive.appTopMargin + Responsive.titularHeight + 10.0,
                            // color: AppColors.secundary

                            child: Column
                            (
                                children:
                                [
                                    const SizedBox(height: Responsive.appTopMargin + 10.0),
                                    Padding
                                    (
                                        padding: const EdgeInsets.symmetric(horizontal: Responsive.appHorizontalPadding),
                                        child: Titular(title: currentTitle)
                                    )
                                ]
                            )
                        ),

                        Container
                        (
                            // color: AppColors.box,
                            width: MediaQuery.of(context).size.width - 2 * Responsive.appHorizontalPadding,
                            height: MediaQuery.of(context).size.width - 2 * Responsive.appHorizontalPadding + 60.0,

                            child: Expanded
                            (
                                child: PageView
                                (
                                    physics: const BouncingScrollPhysics(),
                                    children:
                                    [
                                        Container
                                        (
                                            decoration: BoxDecoration
                                            (
                                                color: AppColors.box,
                                                borderRadius: BorderRadius.circular(20.0)
                                            ),

                                            child: const Center(child: Text("1"))
                                        ),
                                        Container
                                        (
                                            decoration: BoxDecoration
                                            (
                                                color: AppColors.box,
                                                borderRadius: BorderRadius.circular(20.0)
                                            ),

                                            child: const Center(child: Text("2"))
                                        ),
                                        Container
                                        (
                                            decoration: BoxDecoration
                                            (
                                                color: AppColors.box,
                                                borderRadius: BorderRadius.circular(20.0)
                                            ),

                                            child: const Center(child: Text("3"))
                                        ),
                                        Container
                                        (
                                            decoration: BoxDecoration
                                            (
                                                color: AppColors.box,
                                                borderRadius: BorderRadius.circular(20.0)
                                            ),

                                            child: const Center(child: Text("4"))
                                        ),
                                        Container
                                        (
                                            decoration: BoxDecoration
                                            (
                                                color: AppColors.box,
                                                borderRadius: BorderRadius.circular(20.0)
                                            ),

                                            child: const Center(child: Text("5"))
                                        )
                                    ]
                                )
                            )
                        ),

                        Container
                        (
                            // width: MediaQuery.of(context).size.width - 2 * Responsive.appHorizontalPadding,
                            // height: Responsive.appTopMargin + Responsive.titularHeight + 10.0,
                            // color: AppColors.secundary

                            child: Column
                            (
                                children: const
                                [
                                    Padding
                                    (
                                        padding: EdgeInsets.symmetric(horizontal: Responsive.appHorizontalPadding),
                                        child: ViewsController()
                                    ),
                                    SizedBox(height: Responsive.appTopMargin + 10.0)
                                ]
                            )
                        )
                    ]
                )
            )
        );
    }
}