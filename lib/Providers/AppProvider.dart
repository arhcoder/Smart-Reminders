import 'package:flutter/material.dart';

class AppProvider extends ChangeNotifier
{
    // ATTRIBUTES //

    // CURRENT REMINDER //

    /// ID for the selected reminder in the database.
    String reminderID;

    /// Yearly Reminders  = [1];
    /// Monthly Reminders = [2];
    /// Weekly Reminders  = [3];
    /// Daily Reminders   = [4];
    int reminderKind;

    /// Description of the current reminder.
    String description;


    // CONSTRUCTOR //
    AppProvider
    ({
        this.reminderID = "0000",
        this.reminderKind = 1,
        this.description = ""
    });


    // METHODS //
    void resetRemiderValues()
    {
        reminderID = "0000";
        reminderKind = 1;
        description = "";
    }
}