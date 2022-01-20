import 'package:flutter/material.dart';

import 'package:smart_reminders/Responsive/Responsive.dart';
import 'package:smart_reminders/Theme/Theme.dart';

class Block extends StatelessWidget
{
    final Widget child;

    const Block({Key? key, required this.child}) : super(key: key);

    @override
    Widget build(BuildContext context)
    {
        return Center
        (
            child: Container
            (
                width: MediaQuery.of(context).size.width - 2 * Responsive.appHorizontalPadding,
                height: MediaQuery.of(context).size.width - 2 * Responsive.appHorizontalPadding + 60.0,

                decoration: BoxDecoration
                (
                    color: AppColors.box,
                    borderRadius: BorderRadius.circular(20.0),
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
                ),

                child: child
            )
        );
    }
}