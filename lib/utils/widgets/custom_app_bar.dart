import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Widget? title;
  final List<Widget>? actions;
  final Widget? leading;
  final Color? color;

  CustomAppBar({
    this.title,
    this.actions,
    this.leading,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      systemNavigationBarColor: Theme.of(context).scaffoldBackgroundColor,
      systemNavigationBarIconBrightness: Theme.of(context).brightness,

      statusBarIconBrightness:
          Theme.of(context).brightness, // navigation bar color
      statusBarColor:
          Theme.of(context).scaffoldBackgroundColor, // status bar color
    ));
    return Padding(
      padding: EdgeInsets.only(bottom: 0.0, left: 8.0, right: 8.0),
      child: AppBar(
        title: Padding(
          padding: EdgeInsets.only(bottom: 0.0),
          child: this.title,
        ),
        centerTitle: false,
        // backgroundColor: this.color != null ? this.color : Color(0xff262829),
        elevation: 0.0,
        actions: this.actions,
        leading: this.leading != null ? this.leading : null,
        automaticallyImplyLeading: false,
        backgroundColor: Theme.of(context).backgroundColor,
        brightness: Theme.of(context).brightness,
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(55.0);
}
