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

  static m0(emoji, days) => "${emoji} Every ${days}.";

  static m1(emoji, days) => "${emoji} On days ${days}.";

  static m2(emoji, times, hour, each) => "${emoji} ${times} times, from ${hour} hours, each ${each} hours";

  static m3(emoji, days) => "${emoji} Every ${days} of the month";

  static m4(emoji, months) => "${emoji} Every ${months}.";

  static m5(emoji, weekDays) => "${emoji} Every ${weekDays}.";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static _notInlinedMessages(_) => <String, Function> {
    "home_add" : MessageLookupByLibrary.simpleMessage("Create new reminder"),
    "home_empty" : MessageLookupByLibrary.simpleMessage("You have not created any reminder"),
    "home_titular" : MessageLookupByLibrary.simpleMessage("MY REMINDERS"),
    "info" : MessageLookupByLibrary.simpleMessage("More information"),
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
    "program_kind_weekly_description" : MessageLookupByLibrary.simpleMessage("Semanal: Cuando quieres ser notificado sólo en días específicos de la semana."),
    "program_kind_yearly_card" : MessageLookupByLibrary.simpleMessage("Yearly"),
    "program_kind_yearly_description" : MessageLookupByLibrary.simpleMessage("Yearly: When you want to be notified just in some specific months of each year."),
    "program_month_01" : MessageLookupByLibrary.simpleMessage("JAN"),
    "program_month_02" : MessageLookupByLibrary.simpleMessage("FEB"),
    "program_month_03" : MessageLookupByLibrary.simpleMessage("MAR"),
    "program_month_04" : MessageLookupByLibrary.simpleMessage("APR"),
    "program_month_05" : MessageLookupByLibrary.simpleMessage("AMY"),
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
    "program_titular_01" : MessageLookupByLibrary.simpleMessage("MONDAYS"),
    "program_titular_02" : MessageLookupByLibrary.simpleMessage("TUESDAYS"),
    "program_titular_03" : MessageLookupByLibrary.simpleMessage("WEDNESDAYS"),
    "program_titular_04" : MessageLookupByLibrary.simpleMessage("THURSDAYS"),
    "program_titular_05" : MessageLookupByLibrary.simpleMessage("FRIDAYS"),
    "program_titular_06" : MessageLookupByLibrary.simpleMessage("SATURDAYS"),
    "program_titular_07" : MessageLookupByLibrary.simpleMessage("SUNDAYS"),
    "program_titular_days" : MessageLookupByLibrary.simpleMessage("Choose the days"),
    "program_titular_frecuency" : MessageLookupByLibrary.simpleMessage("Frecuency"),
    "program_titular_hours" : MessageLookupByLibrary.simpleMessage("Choose the hours"),
    "program_titular_months" : MessageLookupByLibrary.simpleMessage("Choose the months"),
    "program_titular_weeks" : MessageLookupByLibrary.simpleMessage("Choose the days"),
    "reminder_delete_button" : MessageLookupByLibrary.simpleMessage("Delete"),
    "reminder_edit_button" : MessageLookupByLibrary.simpleMessage("Edit"),
    "reminder_ok_button" : MessageLookupByLibrary.simpleMessage("Got it!"),
    "reminder_pause_button" : MessageLookupByLibrary.simpleMessage("Pause"),
    "reminder_titular" : MessageLookupByLibrary.simpleMessage("My reminder"),
    "reminder_yearly_daily_message" : m0,
    "reminder_yearly_days_message" : m1,
    "reminder_yearly_hours_message" : m2,
    "reminder_yearly_monthly_message" : m3,
    "reminder_yearly_months_message" : m4,
    "reminder_yearly_weekly_message" : m5
  };
}
