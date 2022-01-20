import 'package:flutter/material.dart';

import 'package:smart_reminders/Theme/Theme.dart';
import 'package:smart_reminders/Responsive/Responsive.dart';

class ViewsController extends StatefulWidget
{
    final int index;
    final VoidCallback backFunction;
    final VoidCallback nextFunction;

    const ViewsController
    ({
        Key? key,
        required this.index,
        required this.backFunction,
        required this.nextFunction
    })
    : super(key: key);

    @override
    _ViewsControllerState createState() => _ViewsControllerState();
}

class _ViewsControllerState extends State <ViewsController>
{
    @override
    Widget build(BuildContext context)
    {
        return Container
        (
            width: double.infinity,
            height: Responsive.titularHeight,
            decoration: BoxDecoration
            (
                color: AppColors.main,
                borderRadius: BorderRadius.circular(40.0)
            )
        );
    }
}