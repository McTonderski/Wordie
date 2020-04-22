import 'dart:html';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:wordie/views/login_page.dart';
import 'package:wordie/design/design.dart';

class LoginButtonLogIn extends StatefulWidget {
  final double width_ratio;
  final double height_ratio;
  LoginButtonLogIn({Key key, this.width_ratio, this.height_ratio}) : super(key: key);

  @override
  _LoginButtonState createState() => _LoginButtonState();
}

class _LoginButtonState extends State<LoginButtonLogIn> {
  @override
  Widget build(BuildContext context) {
    return FlatButton(
        onPressed: () {},
        color: navBarLogInColor,
        padding: EdgeInsets.fromLTRB(
            40 * widget.width_ratio,
            3 * widget.height_ratio,
            40 * widget.width_ratio,
            2 * widget.height_ratio),
        child: Text('Zaloguj się',
            style: TextStyle(
                fontFamily: primaryFont,
                fontSize: 18 * sqrt(widget.height_ratio))));
  }
}
