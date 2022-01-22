// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values

class S {
  S();
  
  static S current = S();
  
  static const AppLocalizationDelegate delegate =
    AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false) ? locale.languageCode : locale.toString();
    final localeName = Intl.canonicalizedLocale(name); 
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      S.current = S();
      
      return S.current;
    });
  } 

  static S? of(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `More information`
  String get info {
    return Intl.message(
      'More information',
      name: 'info',
      desc: '',
      args: [],
    );
  }

  /// `January`
  String get january {
    return Intl.message(
      'January',
      name: 'january',
      desc: '',
      args: [],
    );
  }

  /// `February`
  String get february {
    return Intl.message(
      'February',
      name: 'february',
      desc: '',
      args: [],
    );
  }

  /// `March`
  String get march {
    return Intl.message(
      'March',
      name: 'march',
      desc: '',
      args: [],
    );
  }

  /// `April`
  String get april {
    return Intl.message(
      'April',
      name: 'april',
      desc: '',
      args: [],
    );
  }

  /// `May`
  String get may {
    return Intl.message(
      'May',
      name: 'may',
      desc: '',
      args: [],
    );
  }

  /// `June`
  String get june {
    return Intl.message(
      'June',
      name: 'june',
      desc: '',
      args: [],
    );
  }

  /// `July`
  String get july {
    return Intl.message(
      'July',
      name: 'july',
      desc: '',
      args: [],
    );
  }

  /// `August`
  String get august {
    return Intl.message(
      'August',
      name: 'august',
      desc: '',
      args: [],
    );
  }

  /// `September`
  String get september {
    return Intl.message(
      'September',
      name: 'september',
      desc: '',
      args: [],
    );
  }

  /// `October`
  String get october {
    return Intl.message(
      'October',
      name: 'october',
      desc: '',
      args: [],
    );
  }

  /// `November`
  String get november {
    return Intl.message(
      'November',
      name: 'november',
      desc: '',
      args: [],
    );
  }

  /// `December`
  String get december {
    return Intl.message(
      'December',
      name: 'december',
      desc: '',
      args: [],
    );
  }

  /// `MY REMINDERS`
  String get home_titular {
    return Intl.message(
      'MY REMINDERS',
      name: 'home_titular',
      desc: '',
      args: [],
    );
  }

  /// `You have not created any reminder`
  String get home_empty {
    return Intl.message(
      'You have not created any reminder',
      name: 'home_empty',
      desc: '',
      args: [],
    );
  }

  /// `Create new reminder`
  String get home_add {
    return Intl.message(
      'Create new reminder',
      name: 'home_add',
      desc: '',
      args: [],
    );
  }

  /// `NEW REMINDER`
  String get program_header_new {
    return Intl.message(
      'NEW REMINDER',
      name: 'program_header_new',
      desc: '',
      args: [],
    );
  }

  /// `EDIT REMINDER`
  String get program_header_edit {
    return Intl.message(
      'EDIT REMINDER',
      name: 'program_header_edit',
      desc: '',
      args: [],
    );
  }

  /// `Frecuency`
  String get program_titular_frecuency {
    return Intl.message(
      'Frecuency',
      name: 'program_titular_frecuency',
      desc: '',
      args: [],
    );
  }

  /// `Yearly`
  String get program_kind_yearly_card {
    return Intl.message(
      'Yearly',
      name: 'program_kind_yearly_card',
      desc: '',
      args: [],
    );
  }

  /// `Yearly: When you want to be notified just in some specific months of each year.`
  String get program_kind_yearly_description {
    return Intl.message(
      'Yearly: When you want to be notified just in some specific months of each year.',
      name: 'program_kind_yearly_description',
      desc: '',
      args: [],
    );
  }

  /// `Monthly`
  String get program_kind_monthly_card {
    return Intl.message(
      'Monthly',
      name: 'program_kind_monthly_card',
      desc: '',
      args: [],
    );
  }

  /// `Monthly: When you want to be notified just in some specific days of each month.`
  String get program_kind_monthly_description {
    return Intl.message(
      'Monthly: When you want to be notified just in some specific days of each month.',
      name: 'program_kind_monthly_description',
      desc: '',
      args: [],
    );
  }

  /// `Weekly`
  String get program_kind_weekly_card {
    return Intl.message(
      'Weekly',
      name: 'program_kind_weekly_card',
      desc: '',
      args: [],
    );
  }

  /// `Semanal: Cuando quieres ser notificado sólo en días específicos de la semana.`
  String get program_kind_weekly_description {
    return Intl.message(
      'Semanal: Cuando quieres ser notificado sólo en días específicos de la semana.',
      name: 'program_kind_weekly_description',
      desc: '',
      args: [],
    );
  }

  /// `Daily`
  String get program_kind_daily_card {
    return Intl.message(
      'Daily',
      name: 'program_kind_daily_card',
      desc: '',
      args: [],
    );
  }

  /// `Daily: When yo want to be notified all days.`
  String get program_kind_daily_description {
    return Intl.message(
      'Daily: When yo want to be notified all days.',
      name: 'program_kind_daily_description',
      desc: '',
      args: [],
    );
  }

  /// `Reminder description...`
  String get program_description_hint {
    return Intl.message(
      'Reminder description...',
      name: 'program_description_hint',
      desc: '',
      args: [],
    );
  }

  /// `Choose the months`
  String get program_titular_months {
    return Intl.message(
      'Choose the months',
      name: 'program_titular_months',
      desc: '',
      args: [],
    );
  }

  /// `JAN`
  String get program_month_01 {
    return Intl.message(
      'JAN',
      name: 'program_month_01',
      desc: '',
      args: [],
    );
  }

  /// `FEB`
  String get program_month_02 {
    return Intl.message(
      'FEB',
      name: 'program_month_02',
      desc: '',
      args: [],
    );
  }

  /// `MAR`
  String get program_month_03 {
    return Intl.message(
      'MAR',
      name: 'program_month_03',
      desc: '',
      args: [],
    );
  }

  /// `APR`
  String get program_month_04 {
    return Intl.message(
      'APR',
      name: 'program_month_04',
      desc: '',
      args: [],
    );
  }

  /// `AMY`
  String get program_month_05 {
    return Intl.message(
      'AMY',
      name: 'program_month_05',
      desc: '',
      args: [],
    );
  }

  /// `JUN`
  String get program_month_06 {
    return Intl.message(
      'JUN',
      name: 'program_month_06',
      desc: '',
      args: [],
    );
  }

  /// `JUL`
  String get program_month_07 {
    return Intl.message(
      'JUL',
      name: 'program_month_07',
      desc: '',
      args: [],
    );
  }

  /// `AUG`
  String get program_month_08 {
    return Intl.message(
      'AUG',
      name: 'program_month_08',
      desc: '',
      args: [],
    );
  }

  /// `SEP`
  String get program_month_09 {
    return Intl.message(
      'SEP',
      name: 'program_month_09',
      desc: '',
      args: [],
    );
  }

  /// `OCT`
  String get program_month_10 {
    return Intl.message(
      'OCT',
      name: 'program_month_10',
      desc: '',
      args: [],
    );
  }

  /// `NOV`
  String get program_month_11 {
    return Intl.message(
      'NOV',
      name: 'program_month_11',
      desc: '',
      args: [],
    );
  }

  /// `DEC`
  String get program_month_12 {
    return Intl.message(
      'DEC',
      name: 'program_month_12',
      desc: '',
      args: [],
    );
  }

  /// `Choose the days`
  String get program_titular_weeks {
    return Intl.message(
      'Choose the days',
      name: 'program_titular_weeks',
      desc: '',
      args: [],
    );
  }

  /// `Mondays`
  String get program_week_01 {
    return Intl.message(
      'Mondays',
      name: 'program_week_01',
      desc: '',
      args: [],
    );
  }

  /// `Tuesdays`
  String get program_week_02 {
    return Intl.message(
      'Tuesdays',
      name: 'program_week_02',
      desc: '',
      args: [],
    );
  }

  /// `Wednesdays`
  String get program_week_03 {
    return Intl.message(
      'Wednesdays',
      name: 'program_week_03',
      desc: '',
      args: [],
    );
  }

  /// `Thursdays`
  String get program_week_04 {
    return Intl.message(
      'Thursdays',
      name: 'program_week_04',
      desc: '',
      args: [],
    );
  }

  /// `Fridays`
  String get program_week_05 {
    return Intl.message(
      'Fridays',
      name: 'program_week_05',
      desc: '',
      args: [],
    );
  }

  /// `Saturdays`
  String get program_week_06 {
    return Intl.message(
      'Saturdays',
      name: 'program_week_06',
      desc: '',
      args: [],
    );
  }

  /// `Sundays`
  String get program_week_07 {
    return Intl.message(
      'Sundays',
      name: 'program_week_07',
      desc: '',
      args: [],
    );
  }

  /// `Choose the days`
  String get program_titular_days {
    return Intl.message(
      'Choose the days',
      name: 'program_titular_days',
      desc: '',
      args: [],
    );
  }

  /// `Choose the hours`
  String get program_titular_hours {
    return Intl.message(
      'Choose the hours',
      name: 'program_titular_hours',
      desc: '',
      args: [],
    );
  }

  /// `Remind me`
  String get program_times_01 {
    return Intl.message(
      'Remind me',
      name: 'program_times_01',
      desc: '',
      args: [],
    );
  }

  /// `times;`
  String get program_times_02 {
    return Intl.message(
      'times;',
      name: 'program_times_02',
      desc: '',
      args: [],
    );
  }

  /// `Each`
  String get program_each_01 {
    return Intl.message(
      'Each',
      name: 'program_each_01',
      desc: '',
      args: [],
    );
  }

  /// `hours;`
  String get program_each_02 {
    return Intl.message(
      'hours;',
      name: 'program_each_02',
      desc: '',
      args: [],
    );
  }

  /// `From`
  String get program_since_01 {
    return Intl.message(
      'From',
      name: 'program_since_01',
      desc: '',
      args: [],
    );
  }

  /// `hours;`
  String get program_since_02 {
    return Intl.message(
      'hours;',
      name: 'program_since_02',
      desc: '',
      args: [],
    );
  }

  /// `My reminder`
  String get reminder_titular {
    return Intl.message(
      'My reminder',
      name: 'reminder_titular',
      desc: '',
      args: [],
    );
  }

  /// ` will notify:`
  String get reminder_description_message {
    return Intl.message(
      ' will notify:',
      name: 'reminder_description_message',
      desc: '',
      args: [],
    );
  }

  /// `{emoji} Every `
  String reminder_yearly_months_message(Object emoji) {
    return Intl.message(
      '$emoji Every ',
      name: 'reminder_yearly_months_message',
      desc: '',
      args: [emoji],
    );
  }

  /// `{emoji} Every `
  String reminder_days_message(Object emoji) {
    return Intl.message(
      '$emoji Every ',
      name: 'reminder_days_message',
      desc: '',
      args: [emoji],
    );
  }

  /// `{emoji}For each month, every `
  String reminder_monthly_months_message(Object emoji) {
    return Intl.message(
      '${emoji}For each month, every ',
      name: 'reminder_monthly_months_message',
      desc: '',
      args: [emoji],
    );
  }

  /// `{emoji} Everyday.`
  String reminder_daily_days_message(Object emoji) {
    return Intl.message(
      '$emoji Everyday.',
      name: 'reminder_daily_days_message',
      desc: '',
      args: [emoji],
    );
  }

  /// `{emoji} {times} times, from {hour} hours, each {each} hours`
  String reminder_hours_message(Object emoji, Object times, Object hour, Object each) {
    return Intl.message(
      '$emoji $times times, from $hour hours, each $each hours',
      name: 'reminder_hours_message',
      desc: '',
      args: [emoji, times, hour, each],
    );
  }

  /// `Got it!`
  String get reminder_ok_button {
    return Intl.message(
      'Got it!',
      name: 'reminder_ok_button',
      desc: '',
      args: [],
    );
  }

  /// `Delete`
  String get reminder_delete_button {
    return Intl.message(
      'Delete',
      name: 'reminder_delete_button',
      desc: '',
      args: [],
    );
  }

  /// `Pause`
  String get reminder_pause_button {
    return Intl.message(
      'Pause',
      name: 'reminder_pause_button',
      desc: '',
      args: [],
    );
  }

  /// `Edit`
  String get reminder_edit_button {
    return Intl.message(
      'Edit',
      name: 'reminder_edit_button',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'es'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    if (locale != null) {
      for (var supportedLocale in supportedLocales) {
        if (supportedLocale.languageCode == locale.languageCode) {
          return true;
        }
      }
    }
    return false;
  }
}