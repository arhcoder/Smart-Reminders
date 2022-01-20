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

    // Getters //
    List <int> getYearlyTrack() => yearlyTrack;
    List <int> getMonthlyTrack() => monthlyTrack;
    List <int> getWeeklyTrack() => weeklyTrack;
    List <int> getDailyTrack() => dailyTrack;

    // Setters //
    void setCurrentPageIndex(int newIndex)
    {
        pageIndex = newIndex;
    }

    void newPage()
    {
        pageIndex = 0;
    }
}