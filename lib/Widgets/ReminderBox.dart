import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:smart_reminders/generated/l10n.dart';

import 'package:smart_reminders/Theme/Theme.dart';
import 'package:smart_reminders/Responsive/Responsive.dart';
import 'package:smart_reminders/Providers/AppProvider.dart';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ReminderBox extends StatelessWidget
{
    const ReminderBox({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context)
    {
        int reminderKind = Provider.of<AppProvider>(context, listen: false).REMINDER["KIND"];
        ScrollController scrollController = ScrollController(initialScrollOffset: 0.0);

        return Container
        (
            width: MediaQuery.of(context).size.width - 2 * Responsive.appHorizontalPadding,
            height: MediaQuery.of(context).size.width + Responsive.twentyConstant,

            decoration: BoxDecoration
            (
                color: AppColors.white,
                borderRadius: BorderRadius.circular(Responsive.twentyConstant),
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
            
            child: Column
            (
                children:
                [
                    // Title: Reminder Kind //
                    Container
                    (
                        // color: Colors.red,
                        height: Responsive.remindersBoxPadding + Responsive.remindersBoxIconSize + 2.0,
                        child: Row
                        (
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children:
                            [
                                // Icon //
                                Container
                                (
                                    width: Responsive.remindersBoxIconSize - Responsive.twentyConstant * 0.2,
                                    height: Responsive.remindersBoxIconSize - Responsive.twentyConstant * 0.2,
                                    margin: const EdgeInsets.only(left: Responsive.remindersBoxPadding, bottom: 2.0),
                                    child:
                                    (reminderKind == 1)? SvgPicture.asset("assets/icons/yearly_outlined.svg"):
                                    (reminderKind == 2)? SvgPicture.asset("assets/icons/monthly_outlined.svg"):
                                    (reminderKind == 3)? SvgPicture.asset("assets/icons/weekly_outlined.svg"):
                                    SvgPicture.asset("assets/icons/daily_outlined.svg"),
                                ),

                                // Reminder Kind //
                                Expanded
                                (
                                    child: Container
                                    (
                                        alignment: Alignment.centerLeft,
                                        margin: const EdgeInsets.only(
                                            top: Responsive.remindersBoxPadding + 8 - 0.2,
                                            left: Responsive.remindersBoxPadding * 0.60
                                        ),
                                        child: AutoSizeText
                                        (
                                            // Text //
                                            reminderKind == 1? S.current.program_kind_yearly_card.toUpperCase():
                                            reminderKind == 2? S.current.program_kind_monthly_card.toUpperCase():
                                            reminderKind == 3? S.current.program_kind_weekly_card.toUpperCase():
                                            S.current.program_kind_daily_card.toUpperCase(),

                                            style: const TextStyle
                                            (
                                                fontFamily: "Gotham Medium",
                                                color: AppColors.secundary,
                                                fontSize: Responsive.twentyConstant - 1
                                            )
                                        )
                                    )
                                )
                            ]
                        )
                    ),

                    // Reminder Description //
                    Expanded
                    (
                        child: Container
                        (
                            // color: Colors.red,
                            padding: const EdgeInsets.only(
                                top: Responsive.remindersBoxPadding - Responsive.twentyConstant / 2 - 4.0,
                                left: Responsive.remindersBoxPadding + 2.0,
                                right: Responsive.remindersBoxPadding + 2.0,
                                bottom: Responsive.remindersBoxPadding - Responsive.twentyConstant,
                            ),
                            child: MediaQuery.removePadding
                            (
                                context: context,
                                removeTop: true,
                                child: Scrollbar
                                (
                                    controller: scrollController,

                                    isAlwaysShown: true,
                                    showTrackOnHover: false,
                                    thickness: 6,

                                    radius: const Radius.circular(10.0),

                                    child: SingleChildScrollView
                                    (
                                        physics: const BouncingScrollPhysics(),
                                        controller: scrollController,


                                        child: Column
                                        (
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            crossAxisAlignment: CrossAxisAlignment.start,

                                            children: reminderBoxDescription(context)
                                        )
                                    )
                                )
                            )
                        )
                    ),

                    // Reminder Okay Button //
                    Container
                    (
                        // color: Colors.blue,
                        height: Responsive.remindersBoxButtonSize,
                        alignment: Alignment.topRight,
                        padding: const EdgeInsets.only(
                            right: Responsive.remindersBoxPadding,
                            bottom: Responsive.remindersBoxPadding
                        ),

                        child: FloatingActionButton
                        (
                            // heroTag: "tag",
                            backgroundColor: AppColors.secundary,
                            child: const Icon(Icons.check_rounded, size: Responsive.appIconSize - 4.0),
                            onPressed: ()
                            {
                                Navigator.of(context).pop();
                                Provider.of<AppProvider>(context, listen: false).resetReminderValues();
                            }
                        )
                    )
                ]
            )
        );
    }
}

String getMonthsList(BuildContext context)
{
    /// Recieves a context and return a String that contains
    /// all the months of the REMINDER, in text and separated
    /// with comas.

    /// Int List of the months.
    List <int> monthsIntList = Provider.of<AppProvider>(context, listen: false).REMINDER["MONTHS"];
    // monthsIntList.sort();

    /// String of the all months in concatenated text.
    String months = "";

    for (int i = 0; i < monthsIntList.length; i++)
    {
        if (monthsIntList[i] == 1) {months += S.current.january;}
        else if (monthsIntList[i] == 2) {months += S.current.february;}
        else if (monthsIntList[i] == 3) {months += S.current.march;}
        else if (monthsIntList[i] == 4) {months += S.current.april;}
        else if (monthsIntList[i] == 5) {months += S.current.may;}
        else if (monthsIntList[i] == 6) {months += S.current.june;}
        else if (monthsIntList[i] == 7) {months += S.current.july;}
        else if (monthsIntList[i] == 8) {months += S.current.august;}
        else if (monthsIntList[i] == 9) {months += S.current.september;}
        else if (monthsIntList[i] == 10) {months += S.current.october;}
        else if (monthsIntList[i] == 11) {months += S.current.november;}
        else if (monthsIntList[i] == 12) {months += S.current.december;}
        else {print("Index Error of [i] = ${i} and ${monthsIntList[i]}");}

        if (i != monthsIntList.length - 1) {months += ", ";}
        else {months += ".";}
    }
    return months;
}

String getWeeksList(BuildContext context)
{
    /// Recieves a context and return a String that contains
    /// all the weeks of the REMINDER, in text and separated
    /// with comas.
    
    /// Int List of the weeks.
    List <int> weeksIntList = Provider.of<AppProvider>(context, listen: false).REMINDER["WEEKS"];
    // weeksIntList.sort();

    /// String of the all months in concatenated text.
    String weeks = "";

    for (int i = 0; i < weeksIntList.length; i++)
    {
        if (weeksIntList[i] == 1) {weeks += S.current.program_week_01;}
        else if (weeksIntList[i] == 2) {weeks += S.current.program_week_02;}
        else if (weeksIntList[i] == 3) {weeks += S.current.program_week_03;}
        else if (weeksIntList[i] == 4) {weeks += S.current.program_week_04;}
        else if (weeksIntList[i] == 5) {weeks += S.current.program_week_05;}
        else if (weeksIntList[i] == 6) {weeks += S.current.program_week_06;}
        else if (weeksIntList[i] == 7) {weeks += S.current.program_week_07;}
        else {print("Index Error of [i] = ${i} and ${weeksIntList[i]}");}

        if (i != weeksIntList.length - 1) {weeks += ", ";}
        else {weeks += ".";}
    }
    return weeks;
}

String getDaysList(BuildContext context)
{
    /// Recieves a context, and return a String with
    /// all the reminder days separated with coma.
    
    /// Int List of the days.
    List <int> daysIntList = Provider.of<AppProvider>(context, listen: false).REMINDER["DAYS"];
    // daysIntList.sort();

    /// String of the all days in concatenated text.
    String days = "";

    for (int i = 0; i < daysIntList.length; i++)
    {
        days += daysIntList[i].toString();
        if (i != daysIntList.length - 1) {days += ", ";}
        else {days += ".";}
    }
    return days;
}

String getHoursText(BuildContext context)
{
    /// Recieves a context and build a String
    /// with the reminder hours text, base on
    /// the AppProvider information.
    
    String minuteFormated = Provider.of<AppProvider>(context, listen: false).REMINDER["MINUTE"].toString();
    if (minuteFormated.length == 1){minuteFormated += "0";}
    
    return S.current.reminder_hours_message
    (
        "✅",
        Provider.of<AppProvider>(context, listen: false).REMINDER["TIMES"].toString(),
        Provider.of<AppProvider>(context, listen: false).REMINDER["HOUR"].toString() +
        ":" + minuteFormated,
        Provider.of<AppProvider>(context, listen: false).REMINDER["EACH"].toString()
    );
}

List <Widget> reminderBoxDescription(BuildContext context)
{
    String description = Provider.of<AppProvider>(context, listen: false).REMINDER["DESCRIPTION"].toString();
    int reminderKind = Provider.of<AppProvider>(context, listen: false).REMINDER["KIND"];

    List <Widget> widgets = [];
    SizedBox sizedBox = const SizedBox(height: 16.0);

    // Reminder description //
    widgets.add(
        RichText
        (
            textAlign: TextAlign.left,
            text: TextSpan
            (
                text: "\"$description\"", style: boldBlueText(),
                children:
                [
                    TextSpan(text: S.current.reminder_description_message, style: boldNormalText())
                ]
            )
        )
    );
    widgets.add(const SizedBox(height: 20.0));

    // YEARLY: Months //
    if (reminderKind == 1)
    {
        widgets.add(
            RichText
            (
                textAlign: TextAlign.left,
                text: TextSpan
                (
                    text: S.current.reminder_yearly_months_message("✅"), style: regularText(),
                    children:
                    [
                        TextSpan(text: getMonthsList(context), style: boldNormalText())
                    ]
                )
            )
        );
        widgets.add(sizedBox);
    }

    // MONTHLY: Days //
    if (reminderKind == 2)
    {
        widgets.add(
            RichText
            (
                textAlign: TextAlign.left,
                text: TextSpan
                (
                    text: S.current.reminder_monthly_months_message("✅"), style: regularText(),
                    children:
                    [
                        TextSpan(text: getDaysList(context), style: boldNormalText())
                    ]
                )
            )
        );
        widgets.add(sizedBox);
    }

    // WEEKLY: Days //
    if (reminderKind == 3)
    {
        widgets.add(
            RichText
            (
                textAlign: TextAlign.left,
                text: TextSpan
                (
                    text: S.current.reminder_days_message("✅"), style: regularText(),
                    children:
                    [
                        TextSpan(text: getWeeksList(context), style: boldNormalText())
                    ]
                )
            )
        );
        widgets.add(sizedBox);
    }

    // DAILY: Days //
    if (reminderKind == 4)
    {
        widgets.add(
            RichText
            (
                textAlign: TextAlign.left,
                text: TextSpan
                (
                    text: S.current.reminder_daily_days_message("✅"), style: boldNormalText()
                )
            )
        );
        widgets.add(sizedBox);
    }

    // YEARLY: Days //
    if (reminderKind == 1)
    {
        widgets.add(
            RichText
            (
                textAlign: TextAlign.left,
                text: TextSpan
                (
                    text: S.current.reminder_days_message("✅"), style: regularText(),
                    children:
                    [
                        TextSpan(text: getDaysList(context), style: boldNormalText())
                    ]
                )
            )
        );
        widgets.add(sizedBox);
    }

    widgets.add(
        RichText
        (
            textAlign: TextAlign.left,
            text: TextSpan
            (
                text: getHoursText(context), style: boldNormalText()
            )
        )
    );

    return widgets;
}

TextStyle boldBlueText() => const TextStyle
(
    color: AppColors.secundary,
    fontFamily: "Gotham Medium",
    height: 1.34,
    wordSpacing: 0.6,
    fontSize: 16.0
);
TextStyle boldNormalText() => const TextStyle
(
    color: AppColors.textDark,
    fontFamily: "Gotham Medium",
    height: 1.34,
    wordSpacing: 0.6,
    fontSize: 15.0
);
TextStyle regularText() => const TextStyle
(
    color: AppColors.textDark,
    fontFamily: "Gotham Book",
    height: 1.34,
    wordSpacing: 0.6,
    fontSize: 15.0
);