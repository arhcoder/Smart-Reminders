import 'package:flutter/material.dart';

import 'package:smart_reminders/Widgets/Block.dart';

class HoursBlock extends StatelessWidget
{
    const HoursBlock({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context)
    {
        return const Block(child: Center(child: Text("5")));
    }
}