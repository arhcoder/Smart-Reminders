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

    /// Extra space on the hight of default AppBar.
    final double extraMiniHeaderHeight = 10.0;

    const Header({Key? key, this.mini = false, this.title = ""}) : super(key: key);

    @override
    Size get preferredSize => Size.fromHeight(
        (mini)
        ? kToolbarHeight + extraMiniHeaderHeight
        : Responsive.appHeaderHeight,
    );

    @override
    Widget build(BuildContext context)
    {
        return AppBar
        (
            backgroundColor: AppColors.main,
            toolbarHeight: (mini)
            ? kToolbarHeight
            : Responsive.appHeaderHeight,

            title: (mini)
            ? Center
            (
                child: Padding
                (
                    padding: EdgeInsets.only(top: extraMiniHeaderHeight),
                    child: Text
                    (
                        title,
                        style: const TextStyle
                        (
                            fontFamily: "Gotham Bold",
                            color: AppColors.white,
                            fontSize: 16.0
                        )
                    )
                )
            )
            : const Text("[LOGO]"),
            foregroundColor: AppColors.white,
            centerTitle: true,

            actions:
            [
                GestureDetector
                (
                    child: Padding
                    (
                        padding: EdgeInsets.only(
                            top: (mini)
                            ? extraMiniHeaderHeight
                            : 0.0,
                            right: 20.0
                        ),
                        child: Icon
                        (
                            Icons.info_outlined,
                            color: AppColors.white,
                            size: (!mini)
                            ? 30.0
                            : 26.0
                        ),
                    ),
                    onTap: (){Navigator.of(context).pushNamed("/info");}
                )
            ],
            automaticallyImplyLeading: false
        );
    }
}