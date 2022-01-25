import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'Theme/Theme.dart';
// import 'Responsive/Responsive.dart';

import 'generated/l10n.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'Screens/HomeScreen.dart';
import 'Screens/ProgramScreen.dart';
import 'Screens/ReminderScreen.dart';
import 'Screens/InfoScreen.dart';

void main()
{
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle
        (
            statusBarColor: AppColors.main,
            systemNavigationBarColor: AppColors.main
        )
    );

    runApp(const MyApp());
}

class MyApp extends StatelessWidget
{
    const MyApp({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context)
    {
        return MaterialApp
        (
            title: "Smart Reminders",

            initialRoute: "/home",
            routes:
            {
                "/home": (context) => const HomeScreen(),
                "/program": (context) => ProgramReminderScreen(),
                "/reminder": (context) => const ReminderScreen(),
                "/info": (context) => const InfoScreen()
            },

            localizationsDelegates: const
            [
                S.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalMaterialLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate
            ],
            supportedLocales: S.delegate.supportedLocales,

            debugShowCheckedModeBanner: false
        );
    }
}