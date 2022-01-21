import 'package:flutter/material.dart';

class PagesProvider extends ChangeNotifier
{
    // Attributes //
    int pageIndex;

    // Constructor //
    PagesProvider({this.pageIndex = 0});

    List <int> yearlyTrack = [0, 1, 2, 3, 4];
    List <int> monthlyTrack = [0, 2, 3, 4];
    List <int> weeklyTrack = [0, 3, 4];
    List <int> dailyTrack = [0, 4];

    /// To manage the dots state.
    List <int> dotsState = [1, 3, 3, 3, 3];

    // Getters //
    List <int> getYearlyTrack() => yearlyTrack;
    List <int> getMonthlyTrack() => monthlyTrack;
    List <int> getWeeklyTrack() => weeklyTrack;
    List <int> getDailyTrack() => dailyTrack;

    // Setters //
    void setCurrentPageIndex(int newIndex)
    {
        /// Receives a new page index [int].
        /// Set it into the [pageIndex] value. 
        pageIndex = newIndex;
    }

    // Methods //
    void newPage()
    {
        /// Resets the pageIndex to [0].
        pageIndex = 0;

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