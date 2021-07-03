import 'package:flutter/material.dart';
import 'package:tele_covid_solis/config/palette.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Palette.primaryColor,
      elevation: 0.0,
      title: Text(
        "TéléCovid",
        style: TextStyle(fontSize: 26),
      ),
      // centerTitle: true,
      // leading: IconButton(
      //   icon: const Icon(Icons.menu),
      //   iconSize: 28.0,
      //   onPressed: () {},
      // ),
      // actions: <Widget>[
      //   IconButton(
      //     icon: const Icon(Icons.notifications_none),
      //     iconSize: 28.0,
      //     onPressed: () {},
      //   ),
      // ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
