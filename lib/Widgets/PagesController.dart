import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:smart_reminders/Providers/AppProvider.dart';

import 'package:smart_reminders/Theme/Theme.dart';
import 'package:smart_reminders/Responsive/Responsive.dart';

import 'package:smart_reminders/Providers/PagesProvider.dart';

import 'PagesControllerDot.dart';

class PagesController extends StatefulWidget
{
    final VoidCallback pageChangeFunction;

    const PagesController({Key? key, required this.pageChangeFunction}) : super(key: key);

    @override
    PagesControllerState createState() => PagesControllerState();
}

class PagesControllerState extends State <PagesController>
{
    void navigationLogic(int direction)
    {
        /// Current page from PagesProvider.
        int currentPage = Provider.of<PagesProvider>(context, listen: false).pageIndex;
        
        /// Current amount page from PagesProvider.
        int amountPage = Provider.of<PagesProvider>(context, listen: false).pageAmountIndex;

        /// Reminder Kind from AppProvider.
        int reminderKind = Provider.of<AppProvider>(context, listen: false).REMINDER["KIND"];

        /// Navigation guide from PagesProvider.
        List <int> navigationGuide = Provider.of<PagesProvider>(context, listen: false)
        .getNavigationGuide(reminderKind);

        /// If direction == 0, it implements the goes back logic.
        /// If direction == 1, it implements the goes next logic.
        if (direction == 0)
        {
            Provider.of<PagesProvider>(context, listen: false).setCurrentPageIndex(
                navigationGuide[amountPage - 1] - 1
            );
            Provider.of<PagesProvider>(context, listen: false).setDotsState();
            Provider.of<PagesProvider>(context, listen: false).setPageAmountIndex(amountPage - 1);
        }
        else if (direction == 1)
        {
            Provider.of<PagesProvider>(context, listen: false).setCurrentPageIndex(
                navigationGuide[amountPage + 1] - 1
            );
            Provider.of<PagesProvider>(context, listen: false).setDotsState();
            Provider.of<PagesProvider>(context, listen: false).setPageAmountIndex(amountPage + 1);
        }
    }

    @override
    Widget build(BuildContext context)
    {
        // List of dots states //
        List <int> dotsStates = Provider.of<PagesProvider>(context).dotsState;

        return Container
        (
            width: double.infinity,
            height: Responsive.titularHeight,

            child: Row
            (
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,

                children:
                [
                    // Back Button //
                    Container
                    (
                        width: Responsive.titularHeight,
                        height: Responsive.titularHeight,

                        child: (Provider.of<PagesProvider>(context, listen: false).pageIndex == 0)
                        ? FloatingActionButton
                        (
                            backgroundColor: AppColors.secundary,
                            child: const Icon(Icons.close_rounded, size: Responsive.appIconSize - 6.0),
                            onPressed: (){Navigator.of(context).pop();}
                        )
                        : ArrowButton
                        (
                            isBackArrow: true,
                            onTap: ()
                            {
                                navigationLogic(0);
                                widget.pageChangeFunction();
                                setState((){});
                            }
                        )
                    ),

                    // Dots Panel //
                    const SizedBox(width: 44.0),
                    Expanded
                    (
                        child: Row
                        (
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,

                            children:
                            [
                                PagesControllerDot(state: dotsStates[0]),
                                PagesControllerDot(state: dotsStates[1]),
                                PagesControllerDot(state: dotsStates[2]),
                                PagesControllerDot(state: dotsStates[3]),
                                PagesControllerDot(state: dotsStates[4])
                            ]
                        )
                    ),
                    const SizedBox(width: 44.0),

                    // Next Button //
                    Container
                    (
                        width: Responsive.titularHeight,
                        height: Responsive.titularHeight,

                        child: (Provider.of<PagesProvider>(context, listen: false).pageIndex == 4)
                        ? FloatingActionButton
                        (
                            backgroundColor: AppColors.secundary,
                            child: const Icon(Icons.check, size: Responsive.appIconSize - 6.0),
                            onPressed: (){Navigator.of(context).popAndPushNamed("/reminder");}
                        )
                        : ArrowButton
                        (
                            onTap: ()
                            {
                                navigationLogic(1);
                                widget.pageChangeFunction();
                                setState((){});
                            }
                        )
                    )
                ]
            )
        );
    }
}

class ArrowButton extends StatelessWidget
{
    final VoidCallback onTap;
    bool isBackArrow;

    ArrowButton({Key? key, required this.onTap, this.isBackArrow = false}) : super(key: key);

    @override
    Widget build(BuildContext context)
    {
        return FloatingActionButton
        (
            backgroundColor: AppColors.main,
            child: Icon
            (
                (isBackArrow)
                ? Icons.arrow_back
                : Icons.arrow_forward,
                size: Responsive.appIconSize - 6.0
            ),
            heroTag: null,
            onPressed: onTap
        );
    }
}