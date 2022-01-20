import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:smart_reminders/Theme/Theme.dart';
import 'package:smart_reminders/Responsive/Responsive.dart';
import 'package:smart_reminders/Providers/PagesProvider.dart';

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
        /// If direction == 0, it implements the goes back logic.
        /// If direction == 1, it implements the goes next logic.
        if (direction == 0)
        {
            // Annual navigation //
            if (1 == 1)
            {
                Provider.of<PagesProvider>(context, listen: false).setCurrentPageIndex(
                    Provider.of<PagesProvider>(context, listen: false).pageIndex - 1
                );
                setState(() {
                  
                });
            }
        }
        else if (direction == 1)
        {
            if (1 == 1)
            {
                Provider.of<PagesProvider>(context, listen: false).setCurrentPageIndex(
                    Provider.of<PagesProvider>(context, listen: false).pageIndex + 1
                );
                setState(() {
                  
                });
            }
        }
        else
        {
            // Error //
        }
    }


    @override
    Widget build(BuildContext context)
    {
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
                    const SizedBox(width: 20.0),
                    Expanded(child: Container
                    (
                        decoration: BoxDecoration
                        (
                            color: AppColors.card,
                            borderRadius: BorderRadius.circular(20.0)
                        )
                    )),
                    const SizedBox(width: 20.0),

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