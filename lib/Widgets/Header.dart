import 'package:flutter/material.dart';

import 'package:smart_reminders/Theme/Theme.dart';
import 'package:smart_reminders/Responsive/Responsive.dart';

class Header extends StatelessWidget implements PreferredSizeWidget
{
    /// If true, it will set a default AppBar.
    /// If false, it will set a special home AppBar with banner.
    final bool mini;

    /// Title of the AppBar if it is mini.
    final String title;

    const Header({Key? key, this.mini = false, this.title = ""}) : super(key: key);

    @override
    Size get preferredSize => Size.fromHeight(
        (mini)
        ? kToolbarHeight
        : Responsive.headerHeight,
    );

    @override
    Widget build(BuildContext context)
    {
        return AppBar
        (
            backgroundColor: AppColors.main,
            toolbarHeight: (mini)
            ? kToolbarHeight
            : Responsive.headerHeight,

            title: (mini)
            ? Text(title)
            : const Text("[LOGO]"),
            foregroundColor: AppColors.white,
            centerTitle: true,

            actions:
            [
                GestureDetector
                (
                    child: const Padding
                    (
                        padding: EdgeInsets.only(right: 20.0),
                        child: Icon(Icons.info_outlined, color: AppColors.white, size: 30),
                    ),
                    onTap: (){Navigator.of(context).pushNamed("/info");}
                )
            ],
            automaticallyImplyLeading: false
        );
    }
}