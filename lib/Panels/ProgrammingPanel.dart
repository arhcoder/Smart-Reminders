import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:smart_reminders/Responsive/Responsive.dart';
import 'package:smart_reminders/Providers/PagesProvider.dart';

import 'package:smart_reminders/Widgets/Titular.dart';

import 'FrecuencyBlock.dart';
import 'MonthBlock.dart';
import 'WeekBlock.dart';
import 'DaysBlock.dart';
import 'HoursBlock.dart';

import 'package:smart_reminders/Widgets/PagesController.dart';

class ProgrammingPanel extends StatefulWidget
{
    const ProgrammingPanel({Key? key}) : super(key: key);

    @override
    ProgrammingPanelState createState() => ProgrammingPanelState();
}

class ProgrammingPanelState extends State <ProgrammingPanel>
{
    // Attributes //
    PageController pageController = PageController(initialPage: 0);
    String currentTitle = "";

    // Methods //
    void setCurrentTitle()
    {
        currentTitle = Provider.of<PagesProvider>(context, listen: false)
        .programmingScreenTitulars[Provider.of<PagesProvider>(context, listen: false).pageIndex];
        setState((){});
    }
    void changePage()
    {
        pageController.animateToPage(
            Provider.of<PagesProvider>(context, listen: false).pageIndex,
            curve: Curves.ease,
            duration: const Duration(milliseconds: 488)
        );
        setCurrentTitle();
        setState((){});
    }

    @override
    Widget build(BuildContext context)
    {
        // Init title setting //
        setCurrentTitle();

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
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height
                            - 3 * Responsive.appTopMargin + 10.0
                            - 2 * Responsive.titularHeight
                            - Responsive.appHeaderHeight,

                            // padding: const EdgeInsets.symmetric(vertical: 2 * Responsive.appHorizontalPadding + 60.0),
                            
                            child: Column
                            (
                                children:
                                [
                                    Expanded
                                    (
                                        child: PageView
                                        (
                                            controller: pageController,
                                            physics: const NeverScrollableScrollPhysics(),
                                            children: const
                                            [
                                                FrecuencyBlock(),
                                                MonthBlock(),
                                                WeekBlock(),
                                                DaysBlock(),
                                                HoursBlock()
                                            ]
                                        )
                                    )
                                ]
                            )
                        ),

                        Container
                        (
                            // width: MediaQuery.of(context).size.width - 2 * Responsive.appHorizontalPadding,
                            // height: Responsive.appTopMargin + Responsive.titularHeight + 10.0,
                            // color: AppColors.secundary

                            child: Column
                            (
                                children:
                                [
                                    Padding
                                    (
                                        padding: const EdgeInsets.symmetric(horizontal: Responsive.appHorizontalPadding),
                                        child: PagesController(pageChangeFunction: changePage)
                                    ),
                                    const SizedBox(height: Responsive.appTopMargin + 10.0)
                                ]
                            )
                        )
                    ]
                )
            )
        );
    }
}