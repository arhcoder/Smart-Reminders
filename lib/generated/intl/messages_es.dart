// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a es locale. All the
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
  String get localeName => 'es';

  static m0(emoji, days) => "${emoji} Todos los días ${days}.";

  static m1(emoji, days) => "${emoji} Los días ${days}.";

  static m2(emoji, times, hour, each) => "${emoji} ${times} veces, a partir de las ${hour} hours, cada ${each} horas.";

  static m3(emoji, days) => "${emoji} Todos los días ${days} del mes.";

  static m4(emoji, months) => "${emoji} Todos los meses ${months}.";

  static m5(emoji, weekDays) => "${emoji} Todos los días ${weekDays}.";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static _notInlinedMessages(_) => <String, Function> {
    "home_add" : MessageLookupByLibrary.simpleMessage("Crear nuevo recordatorio"),
    "home_empty" : MessageLookupByLibrary.simpleMessage("No ha creado ningún recordatorio"),
    "home_titular" : MessageLookupByLibrary.simpleMessage("MIS RECORDATORIOS"),
    "info" : MessageLookupByLibrary.simpleMessage("Más información"),
    "program_description_hint" : MessageLookupByLibrary.simpleMessage("Descripción del recordatorio..."),
    "program_each_01" : MessageLookupByLibrary.simpleMessage("Cada"),
    "program_each_02" : MessageLookupByLibrary.simpleMessage("horas;"),
    "program_header_edit" : MessageLookupByLibrary.simpleMessage("EDITAR RECORDATORIO"),
    "program_header_new" : MessageLookupByLibrary.simpleMessage("NUEVO RECORDATORIO"),
    "program_kind_daily_card" : MessageLookupByLibrary.simpleMessage("Diario"),
    "program_kind_daily_description" : MessageLookupByLibrary.simpleMessage("Diario: Cuando quieres ser notificado todos los días."),
    "program_kind_monthly_card" : MessageLookupByLibrary.simpleMessage("Mensual"),
    "program_kind_monthly_description" : MessageLookupByLibrary.simpleMessage("Mensual: Cuando quieres ser notificado sólo algunos días específicos de cada mes."),
    "program_kind_weekly_card" : MessageLookupByLibrary.simpleMessage("Semanal"),
    "program_kind_weekly_description" : MessageLookupByLibrary.simpleMessage("Semanal: Cuando quieres ser notificado sólo en días específicos de la semana."),
    "program_kind_yearly_card" : MessageLookupByLibrary.simpleMessage("Anual"),
    "program_kind_yearly_description" : MessageLookupByLibrary.simpleMessage("Anual: Cuando quieres ser notificado sólo algunos meses específicos del año."),
    "program_month_01" : MessageLookupByLibrary.simpleMessage("ENE"),
    "program_month_02" : MessageLookupByLibrary.simpleMessage("FEB"),
    "program_month_03" : MessageLookupByLibrary.simpleMessage("MAR"),
    "program_month_04" : MessageLookupByLibrary.simpleMessage("ABR"),
    "program_month_05" : MessageLookupByLibrary.simpleMessage("MAY"),
    "program_month_06" : MessageLookupByLibrary.simpleMessage("JUN"),
    "program_month_07" : MessageLookupByLibrary.simpleMessage("JUL"),
    "program_month_08" : MessageLookupByLibrary.simpleMessage("AGO"),
    "program_month_09" : MessageLookupByLibrary.simpleMessage("SEP"),
    "program_month_10" : MessageLookupByLibrary.simpleMessage("OCT"),
    "program_month_11" : MessageLookupByLibrary.simpleMessage("NOV"),
    "program_month_12" : MessageLookupByLibrary.simpleMessage("DIC"),
    "program_since_01" : MessageLookupByLibrary.simpleMessage("Desde las"),
    "program_since_02" : MessageLookupByLibrary.simpleMessage("horas;"),
    "program_times_01" : MessageLookupByLibrary.simpleMessage("Recordarme"),
    "program_times_02" : MessageLookupByLibrary.simpleMessage("veces;"),
    "program_titular_days" : MessageLookupByLibrary.simpleMessage("Selecciona los días"),
    "program_titular_frecuency" : MessageLookupByLibrary.simpleMessage("Frecuencia"),
    "program_titular_hours" : MessageLookupByLibrary.simpleMessage("Selecciona las horas"),
    "program_titular_months" : MessageLookupByLibrary.simpleMessage("Selecciona los meses"),
    "program_titular_weeks" : MessageLookupByLibrary.simpleMessage("Selecciona los días"),
    "program_week_01" : MessageLookupByLibrary.simpleMessage("LUNES"),
    "program_week_02" : MessageLookupByLibrary.simpleMessage("MARTES"),
    "program_week_03" : MessageLookupByLibrary.simpleMessage("MIÉRCOLES"),
    "program_week_04" : MessageLookupByLibrary.simpleMessage("JUEVES"),
    "program_week_05" : MessageLookupByLibrary.simpleMessage("VIERNES"),
    "program_week_06" : MessageLookupByLibrary.simpleMessage("SÁBADOS"),
    "program_week_07" : MessageLookupByLibrary.simpleMessage("DOMINGOS"),
    "reminder_delete_button" : MessageLookupByLibrary.simpleMessage("Borrar"),
    "reminder_edit_button" : MessageLookupByLibrary.simpleMessage("Editar"),
    "reminder_ok_button" : MessageLookupByLibrary.simpleMessage("¡Entendido!"),
    "reminder_pause_button" : MessageLookupByLibrary.simpleMessage("Pausar"),
    "reminder_titular" : MessageLookupByLibrary.simpleMessage("Mi recordatorio"),
    "reminder_yearly_daily_message" : m0,
    "reminder_yearly_days_message" : m1,
    "reminder_yearly_hours_message" : m2,
    "reminder_yearly_monthly_message" : m3,
    "reminder_yearly_months_message" : m4,
    "reminder_yearly_weekly_message" : m5
  };
}
