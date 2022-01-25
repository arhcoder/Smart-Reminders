import 'package:flutter/material.dart';

import 'package:smart_reminders/generated/l10n.dart';

import 'package:smart_reminders/Theme/Theme.dart';
// import 'package:smart_reminders/Responsive/Responsive.dart';

import 'package:smart_reminders/Widgets/Header.dart';

class HomeScreen extends StatelessWidget
{
    const HomeScreen({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context)
    {
        return Scaffold
        (
            appBar: const Header(),
            body: Container(),
            backgroundColor: AppColors.background,
            floatingActionButton: FloatingActionButton
            (
                backgroundColor: AppColors.main,
                child: const Icon(Icons.add, color: AppColors.white),
                tooltip: S.current.home_add,
                onPressed: ()
                {
                    Navigator.of(context).pushNamed("/program");
                }
            )
        );
    }
}