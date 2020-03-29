import 'package:flutter/material.dart';
import 'package:wordie/design/design.dart';

class NavBarWordie extends StatelessWidget implements PreferredSizeWidget{
  final Color backgroundColor = Colors.red;
  final Text title;
  final List<Widget> widgets;
  const NavBarWordie({Key key, this.title = const Text('Wordie'), this.widgets})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: primaryBackgroundColor,
      centerTitle: true,
      elevation: 0,
      title: Text(
        "wordie",
        style: TextStyle(
          fontFamily: primaryFont,
          color: Colors.black
        )
      ),
    );
  }

  @override
  Size get preferredSize => new Size.fromHeight(80.0);
}