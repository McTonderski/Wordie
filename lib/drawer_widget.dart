import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  final chosen;
  const DrawerWidget({Key key, @required this.chosen}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget
      ),
    );
  }
}