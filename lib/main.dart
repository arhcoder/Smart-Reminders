import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter/services.dart';

import 'Providers/AppProvider.dart';
import 'Providers/PagesProvider.dart';

import 'Theme/Theme.dart';

import 'generated/l10n.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'Screens/HomeScreen.dart';
import 'Screens/ProgrammingScreen.dart';
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

    runApp(const ReminderApp());
}

class ReminderApp extends StatelessWidget
{
    const ReminderApp({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context)
    {
        SystemChrome.setPreferredOrientations([
            DeviceOrientation.portraitUp,
            DeviceOrientation.portraitDown
        ]);

        return MultiProvider
        (
            child: const MyApp(),
            providers:
            [
                ChangeNotifierProvider(create: (_) => AppProvider(), lazy: false),
                ChangeNotifierProvider(create: (_) => PagesProvider(), lazy: false)
            ]
        );
    }
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