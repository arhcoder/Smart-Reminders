import 'package:flutter/material.dart';

class AppProvider extends ChangeNotifier
{
    // REMINDER ATTRIBUTES MAP //
    Map <String, dynamic> REMINDER =
    {
        /// ID for the selected reminder in the database.
        /// Not-Nullable; first value = 1.
        /// INT;
        "ID":  1,

        /// Yearly Reminders  = 1;
        /// Monthly Reminders = 2;
        /// Weekly Reminders  = 3;
        /// Daily Reminders   = 4;
        /// Not-Nullable; default value = 1.
        /// INT;
        "KIND": 1,

        /// Description of the current reminder.
        /// Not-Nullable; default value = "".
        /// STRING;
        "DESCRIPTION": "",

        /// List of months added to the reminder [1, 12];
        /// It is only for yearly reminders.
        /// [0] if it doesn't has months.
        /// LIST <INT>;
        "MONTHS": <int>[0],

        /// List of weeks added to the reminder [1, 8 - 1];
        /// It is only for weekly reminders.
        /// [0] if it doesn't has weeks.
        /// LIST <INT>;
        "WEEKS": <int>[0],

        /// List of days added to the reminder [1, 32 - 1];
        /// It is not for weekly reminders.
        /// Not-Nullable; default value = [1].
        /// LIST <INT>;
        "DAYS": <int>[1],

        /// Amount of times the reminder will notify.
        /// Not-Nullable; default value = 1.
        /// INT;
        "TIMES": 1,

        /// Hours between reminders notification.
        /// Not-Nullable; default value = 1.
        /// INT;
        "EACH": 1,

        /// Hour of the first notification [0, 24 - 1]
        /// Not-Nullable; default value = 8.
        /// INT;
        "HOUR": 8,

        /// Minute of the first notification [0, 60 - 1]
        /// Not-Nullable; default value = 00.
        /// INT;
        "MINUTE": 0,

        /// List of special months exception [ 29 || 30 || 31 ]
        /// It is only for yearly reminders.
        /// If it has [29], it will notify on February's 29th.
        /// If it has [30], it will notify on March's 1st.
        /// If it has [31], it will notify on the first day
        /// of months next to 30 days months.
        /// [0] if it doesn't has exceptions.
        /// LIST <INT>
        "EXCEPTIONS": <int>[0],
        

        /// If the reminder is paused [true || false]
        /// Not-Nullable, default value = false.
        /// BOOLEAN;
        "ISPAUSED": false
    };

    // CONSTRUCTOR //
    AppProvider()
    {
        tempGiveReminderValues();
    }

    // METHODS //
    void insertListsData(String key, int data)
    {
        if (key == "KIND")
        {
            REMINDER[key] = data;
        }
        else if (key == "MONTHS" || key == "WEEKS" || key == "DAYS")
        {
            if (REMINDER[key].contains(data)){}
            else {REMINDER[key].add(data);}
        }
        else
        {
            print("Error trying to adding data into the AppProvider REMINDER[$key].\nThe key $key is not defined.");
        }
        print(REMINDER[key]);
    }
    void removeListsData(String key, int data)
    {
        if (key == "KIND")
        {
            REMINDER[key] = data;
        }
        else if (key == "MONTHS" || key == "WEEKS" || key == "DAYS")
        {
            if (REMINDER[key].contains(data)){REMINDER[key].remove(data);}
        }
        else
        {
            print("Error trying to removing data into the AppProvider REMINDER[$key].\nThe key $key is not defined.");
        }
        print(REMINDER[key]);
    }
    void tempGiveReminderValues()
    {
        REMINDER["ID"] = 1;
        REMINDER["KIND"] = 1;
        REMINDER["DESCRIPTION"] = "Pagar la luz a Veolia";
        REMINDER["MONTHS"] = [1, 2, 8, 12];
        REMINDER["WEEKS"] = [1, 3, 5];
        REMINDER["DAYS"] = [1, 2, 3, 4, 8, 10, 12, 14, 16, 18, 24, 28];
        REMINDER["TIMES"] = 4;
        REMINDER["EACH"] = 2;
        REMINDER["HOUR"] = 8;
        REMINDER["MINUTE"] = 0;
    }
    void orderReminderListValues()
    {
        REMINDER["MONTHS"].sort();
        REMINDER["WEEKS"].sort();
        REMINDER["DAYS"].sort();
    }
    void resetReminderValues()
    {
        /*
        REMINDER["ID"] = 0;
        REMINDER["KIND"] = 1;
        REMINDER["DESCRIPTION"] = "";
        REMINDER["MONTHS"] = [0];
        REMINDER["WEEKS"] = [0];
        REMINDER["DAYS"] = [0];
        REMINDER["TIMES"] = 0;
        REMINDER["EACH"] = 0;
        REMINDER["HOUR"] = 0;
        REMINDER["MINUTE"] = 0;
        REMINDER["EXCEPTIONS"] = 0;
        REMINDER["ISPAUSED"] = false;
        */
    }
}