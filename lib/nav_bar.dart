import 'package:flutter/material.dart';

class NavBarWordie extends StatelessWidget implements PreferredSizeWidget{
  final Color backgroundColor = Colors.red;
  final Text title;
  final AppBar appBar;
  final List<Widget> widgets;
  const NavBarWordie({Key key, this.title, this.appBar, this.widgets})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text("wordie"),
    );
  }

  @override
  Size get preferredSize => new Size.fromHeight(appBar.preferredSize.height);
}