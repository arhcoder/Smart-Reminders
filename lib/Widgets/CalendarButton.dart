import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:smart_reminders/Theme/Theme.dart';
import 'package:smart_reminders/Responsive/Responsive.dart';

import 'package:smart_reminders/Providers/AppProvider.dart';

import 'package:auto_size_text/auto_size_text.dart';

class CalendarButton extends StatefulWidget
{
    // Attributes //
    final String text;
    final String reminderKey;
    final int value;

    bool isSelected;
    VoidCallback parentSetStateFunction;

    // To replace the [parentSetStateFunction]
    // when it doesn't recieves it.
    static void defaultEmptyFunction(){}
    
    CalendarButton
    ({
        Key? key,
        required this.text,
        required this.value,
        required this.reminderKey,
        this.parentSetStateFunction = defaultEmptyFunction,
        this.isSelected = false
    })
    : super(key: key);

    /*functionThatNeedsToExecutetheParent =
    functionThatNeedsToExecutetheParent ??
    (()
    {
        // If the constructor has not
        // [functionThatNeedsToExecutetheParent],
        // it uses the default empty function.
        defaultEmptyFunction();
    });*/

    @override
    State <CalendarButton> createState() => CalendarButtonState();
}

class CalendarButtonState extends State <CalendarButton>
{
    @override
    Widget build(BuildContext context)
    {
        return Container
        (
            
            child: GestureDetector
            (
                onTap: ()
                {
                    if (widget.reminderKey != "KIND")
                    {
                        widget.isSelected = !widget.isSelected;
                    }
                    else
                    {
                        if (widget.isSelected == false)
                        {
                            widget.isSelected = !widget.isSelected;
                        }
                    }

                    if (widget.isSelected)
                    {
                        Provider.of<AppProvider>(context, listen: false).insertListsData(
                            widget.reminderKey, widget.value
                        );
                    }
                    else
                    {
                        Provider.of<AppProvider>(context, listen: false).removeListsData(
                            widget.reminderKey, widget.value
                        );
                    }

                    widget.parentSetStateFunction();
                    setState((){});
                },

                child: Container
                (
                    decoration: (widget.isSelected)?
                    BoxDecoration
                    (
                        color: AppColors.secundary,
                        borderRadius: BorderRadius.circular(Responsive.twentyConstant * 0.6),
                        /*border: Border.all(
                            color: AppColors.secundary,
                            style: BorderStyle.solid,
                            width: 5.0
                        ),*/
                        boxShadow:
                        [
                            BoxShadow
                            (
                                color: Colors.grey.withOpacity(0.80),
                                offset: const Offset(0, 0),
                                blurRadius: 20.0,
                                spreadRadius: 2
                            )
                        ]
                    ):
                    BoxDecoration
                    (
                        color: AppColors.card,
                        borderRadius: BorderRadius.circular(Responsive.twentyConstant * 0.6),
                        /*border: Border.all(
                            color: AppColors.background.withAlpha(255),
                            style: BorderStyle.solid,
                            width: 5.0
                        )*/
                    ),

                    child: Center
                    (
                        child: AutoSizeText
                        (
                            widget.text,
                            style: TextStyle
                            (
                                fontFamily: "Gotham Bold",
                                color: (widget.isSelected)
                                ? AppColors.white
                                : AppColors.background,
                                fontSize: 16.0
                            )
                        )
                    )
                )
            )
        );
    }
}