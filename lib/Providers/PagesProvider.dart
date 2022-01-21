import 'package:flutter/material.dart';

import 'package:smart_reminders/generated/l10n.dart';

class PagesProvider extends ChangeNotifier
{
    // Attributes //
    int pageIndex;
    List <String> programmingScreenTitulars =
    [
        S.current.program_titular_frecuency,
        S.current.program_titular_months,
        S.current.program_titular_weeks,
        S.current.program_titular_days,
        S.current.program_titular_hours
    ];

    // Constructor //
    PagesProvider({this.pageIndex = 0});

    // Navigation guide //
    int pageAmountIndex = 0;
    /* List <List <int> > navigationGuide =
    [
        // Yearly Navigation //
        [0, 1, 2, 3, 4],
        
        // Monthly Navigation //
        [0, 3, 4],
        
        // Weekly Navigation //
        [0, 2, 4],
        
        // Daily Navigation //
        [0, 4]
    ];*/

    // List <int> yearlyTrack = [0, 1, 2, 3, 4];
    // List <int> monthlyTrack = [0, 3, 4];
    // List <int> weeklyTrack = [0, 2, 4];
    // List <int> dailyTrack = [0, 4];

    /// To manage the dots state.
    List <int> dotsState = [1, 3, 3, 3, 3];

    // Getters //
    // List <int> getYearlyTrack() => yearlyTrack;
    // List <int> getMonthlyTrack() => monthlyTrack;
    // List <int> getWeeklyTrack() => weeklyTrack;
    // List <int> getDailyTrack() => dailyTrack;

    List <int> getNavigationGuide(int reminderKind)
    {
        switch (reminderKind)
        {
            case 1: return [1, 2, 3, 4, 5];
            case 2: return [1, 4, 5];
            case 3: return [1, 3, 5];
            case 4: return [1, 5];
            default: return [1, 2, 3, 4, 5];
        }
    }

    // Setters //
    void setCurrentPageIndex(int newIndex)
    {
        /// Receives a new page index [int].
        /// Set it into the [pageIndex] value.
        pageIndex = newIndex;
    }
    void setPageAmountIndex(int newIndex)
    {
        /// Receives a new page index [int].
        /// Set it into the [pageAmountIndex] value.
        pageAmountIndex = newIndex;
    }

    // Methods //
    void newPage()
    {
        /// Resets the pageIndex to [0].
        pageIndex = 0;

        /// Reset the pageAmountIndex to [0].
        pageAmountIndex = 0;

        /// Resets the dotsState to first state.
        dotsState = [1, 3, 3, 3, 3];
    }
    void setDotsState()
    {
        /// Set the dots state.
        switch (pageIndex)
        {
            case 0:
            dotsState = [1, 3, 3, 3, 3];
            break;

            case 1:
            dotsState = [2, 1, 3, 3, 3];
            break;

            case 2:
            dotsState = [2, 2, 1, 3, 3];
            break;

            case 3:
            dotsState = [2, 2, 2, 1, 3];
            break;

            case 4:
            dotsState = [2, 2, 2, 2, 1];
            break;
        }
    }
}