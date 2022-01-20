import 'package:flutter/material.dart';

class AppProvider extends ChangeNotifier
{
    // ATTRIBUTES //

    // CURRENT REMINDER //

    /// ID for the selected reminder in the database.
    String currentReminderID;

    /// Yearly Reminders  = [1];
    /// Monthly Reminders = [2];
    /// Weekly Reminders  = [3];
    /// Daily Reminders   = [4];
    int currentReminderKind;

    /// Description of the current reminder.
    String description;


    // CONSTRUCTOR //
    AppProvider
    ({
        this.currentReminderID = "0000",
        this.currentReminderKind = 1,
        this.description = ""
    });


    // METHODS //
    void resetRemiderValues()
    {
        currentReminderID = "0000";
        currentReminderKind = 1;
        description = "";
    }
}