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

  /// `MONDAYS`
  String get program_titular_01 {
    return Intl.message(
      'MONDAYS',
      name: 'program_titular_01',
      desc: '',
      args: [],
    );
  }

  /// `TUESDAYS`
  String get program_titular_02 {
    return Intl.message(
      'TUESDAYS',
      name: 'program_titular_02',
      desc: '',
      args: [],
    );
  }

  /// `WEDNESDAYS`
  String get program_titular_03 {
    return Intl.message(
      'WEDNESDAYS',
      name: 'program_titular_03',
      desc: '',
      args: [],
    );
  }

  /// `THURSDAYS`
  String get program_titular_04 {
    return Intl.message(
      'THURSDAYS',
      name: 'program_titular_04',
      desc: '',
      args: [],
    );
  }

  /// `FRIDAYS`
  String get program_titular_05 {
    return Intl.message(
      'FRIDAYS',
      name: 'program_titular_05',
      desc: '',
      args: [],
    );
  }

  /// `SATURDAYS`
  String get program_titular_06 {
    return Intl.message(
      'SATURDAYS',
      name: 'program_titular_06',
      desc: '',
      args: [],
    );
  }

  /// `SUNDAYS`
  String get program_titular_07 {
    return Intl.message(
      'SUNDAYS',
      name: 'program_titular_07',
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

  /// `{emoji} Every {months}.`
  String reminder_yearly_months_message(Object emoji, Object months) {
    return Intl.message(
      '$emoji Every $months.',
      name: 'reminder_yearly_months_message',
      desc: '',
      args: [emoji, months],
    );
  }

  /// `{emoji} Every {weekDays}.`
  String reminder_yearly_weekly_message(Object emoji, Object weekDays) {
    return Intl.message(
      '$emoji Every $weekDays.',
      name: 'reminder_yearly_weekly_message',
      desc: '',
      args: [emoji, weekDays],
    );
  }

  /// `{emoji} Every {days}.`
  String reminder_yearly_daily_message(Object emoji, Object days) {
    return Intl.message(
      '$emoji Every $days.',
      name: 'reminder_yearly_daily_message',
      desc: '',
      args: [emoji, days],
    );
  }

  /// `{emoji} Every {days} of the month`
  String reminder_yearly_monthly_message(Object emoji, Object days) {
    return Intl.message(
      '$emoji Every $days of the month',
      name: 'reminder_yearly_monthly_message',
      desc: '',
      args: [emoji, days],
    );
  }

  /// `{emoji} On days {days}.`
  String reminder_yearly_days_message(Object emoji, Object days) {
    return Intl.message(
      '$emoji On days $days.',
      name: 'reminder_yearly_days_message',
      desc: '',
      args: [emoji, days],
    );
  }

  /// `{emoji} {times} times, from {hour} hours, each {each} hours`
  String reminder_yearly_hours_message(Object emoji, Object times, Object hour, Object each) {
    return Intl.message(
      '$emoji $times times, from $hour hours, each $each hours',
      name: 'reminder_yearly_hours_message',
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