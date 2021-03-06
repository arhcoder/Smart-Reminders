// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'en';

  static m0(emoji) => "${emoji} Everyday.";

  static m1(emoji) => "${emoji} Every ";

  static m2(emoji, times, hour, each) => "${emoji} ${times} times, from ${hour} hours, each ${each} hours.";

  static m3(emoji) => "${emoji}For each month, every ";

  static m4(emoji) => "${emoji} Every ";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static _notInlinedMessages(_) => <String, Function> {
    "april" : MessageLookupByLibrary.simpleMessage("April"),
    "august" : MessageLookupByLibrary.simpleMessage("August"),
    "december" : MessageLookupByLibrary.simpleMessage("December"),
    "february" : MessageLookupByLibrary.simpleMessage("February"),
    "home_add" : MessageLookupByLibrary.simpleMessage("Create new reminder"),
    "home_empty" : MessageLookupByLibrary.simpleMessage("You have not created any reminder"),
    "home_titular" : MessageLookupByLibrary.simpleMessage("MY REMINDERS"),
    "info" : MessageLookupByLibrary.simpleMessage("More information"),
    "january" : MessageLookupByLibrary.simpleMessage("January"),
    "july" : MessageLookupByLibrary.simpleMessage("July"),
    "june" : MessageLookupByLibrary.simpleMessage("June"),
    "march" : MessageLookupByLibrary.simpleMessage("March"),
    "may" : MessageLookupByLibrary.simpleMessage("May"),
    "november" : MessageLookupByLibrary.simpleMessage("November"),
    "october" : MessageLookupByLibrary.simpleMessage("October"),
    "program_description_hint" : MessageLookupByLibrary.simpleMessage("Reminder description..."),
    "program_each_01" : MessageLookupByLibrary.simpleMessage("Each"),
    "program_each_02" : MessageLookupByLibrary.simpleMessage("hours;"),
    "program_header_edit" : MessageLookupByLibrary.simpleMessage("EDIT REMINDER"),
    "program_header_new" : MessageLookupByLibrary.simpleMessage("NEW REMINDER"),
    "program_kind_daily_card" : MessageLookupByLibrary.simpleMessage("Daily"),
    "program_kind_daily_description" : MessageLookupByLibrary.simpleMessage("Daily: When yo want to be notified all days."),
    "program_kind_monthly_card" : MessageLookupByLibrary.simpleMessage("Monthly"),
    "program_kind_monthly_description" : MessageLookupByLibrary.simpleMessage("Monthly: When you want to be notified just in some specific days of each month."),
    "program_kind_weekly_card" : MessageLookupByLibrary.simpleMessage("Weekly"),
    "program_kind_weekly_description" : MessageLookupByLibrary.simpleMessage("Semanal: Cuando quieres ser notificado s??lo en d??as espec??ficos de la semana."),
    "program_kind_yearly_card" : MessageLookupByLibrary.simpleMessage("Yearly"),
    "program_kind_yearly_description" : MessageLookupByLibrary.simpleMessage("Yearly: When you want to be notified just in some specific months of each year."),
    "program_month_01" : MessageLookupByLibrary.simpleMessage("JAN"),
    "program_month_02" : MessageLookupByLibrary.simpleMessage("FEB"),
    "program_month_03" : MessageLookupByLibrary.simpleMessage("MAR"),
    "program_month_04" : MessageLookupByLibrary.simpleMessage("APR"),
    "program_month_05" : MessageLookupByLibrary.simpleMessage("MAY"),
    "program_month_06" : MessageLookupByLibrary.simpleMessage("JUN"),
    "program_month_07" : MessageLookupByLibrary.simpleMessage("JUL"),
    "program_month_08" : MessageLookupByLibrary.simpleMessage("AUG"),
    "program_month_09" : MessageLookupByLibrary.simpleMessage("SEP"),
    "program_month_10" : MessageLookupByLibrary.simpleMessage("OCT"),
    "program_month_11" : MessageLookupByLibrary.simpleMessage("NOV"),
    "program_month_12" : MessageLookupByLibrary.simpleMessage("DEC"),
    "program_since_01" : MessageLookupByLibrary.simpleMessage("From"),
    "program_since_02" : MessageLookupByLibrary.simpleMessage("hours;"),
    "program_times_01" : MessageLookupByLibrary.simpleMessage("Remind me"),
    "program_times_02" : MessageLookupByLibrary.simpleMessage("times;"),
    "program_titular_days" : MessageLookupByLibrary.simpleMessage("Choose the days"),
    "program_titular_frecuency" : MessageLookupByLibrary.simpleMessage("Frecuency"),
    "program_titular_hours" : MessageLookupByLibrary.simpleMessage("Choose the hours"),
    "program_titular_months" : MessageLookupByLibrary.simpleMessage("Choose the months"),
    "program_titular_weeks" : MessageLookupByLibrary.simpleMessage("Choose the days"),
    "program_week_01" : MessageLookupByLibrary.simpleMessage("Mondays"),
    "program_week_02" : MessageLookupByLibrary.simpleMessage("Tuesdays"),
    "program_week_03" : MessageLookupByLibrary.simpleMessage("Wednesdays"),
    "program_week_04" : MessageLookupByLibrary.simpleMessage("Thursdays"),
    "program_week_05" : MessageLookupByLibrary.simpleMessage("Fridays"),
    "program_week_06" : MessageLookupByLibrary.simpleMessage("Saturdays"),
    "program_week_07" : MessageLookupByLibrary.simpleMessage("Sundays"),
    "reminder_daily_days_message" : m0,
    "reminder_days_message" : m1,
    "reminder_delete_button" : MessageLookupByLibrary.simpleMessage("Delete"),
    "reminder_description_message" : MessageLookupByLibrary.simpleMessage(" will notify:"),
    "reminder_edit_button" : MessageLookupByLibrary.simpleMessage("Edit"),
    "reminder_hours_message" : m2,
    "reminder_monthly_months_message" : m3,
    "reminder_ok_button" : MessageLookupByLibrary.simpleMessage("Got it!"),
    "reminder_pause_button" : MessageLookupByLibrary.simpleMessage("Pause"),
    "reminder_titular" : MessageLookupByLibrary.simpleMessage("My reminder"),
    "reminder_yearly_months_message" : m4,
    "september" : MessageLookupByLibrary.simpleMessage("September")
  };
}
