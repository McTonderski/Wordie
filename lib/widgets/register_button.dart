import 'dart:html';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:wordie/views/login_page.dart';
import 'package:wordie/design/design.dart';

class RegisterButtonLogIn extends StatefulWidget {
  final double width_ratio;
  final double height_ratio;
  RegisterButtonLogIn({Key key, this.width_ratio, this.height_ratio})
      : super(key: key);

  @override
  _RegisterButtonState createState() => _RegisterButtonState();
}

class _RegisterButtonState extends State<RegisterButtonLogIn> {
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: () {},
      color: registerButtonColor,
      padding: EdgeInsets.fromLTRB(
          50 * widget.width_ratio,
          3 * widget.height_ratio,
          50 * widget.width_ratio,
          2 * widget.height_ratio),
      child: Text('Zarejestruj się',
          style: TextStyle(
              fontFamily: primaryFont,
              fontSize: 18 * sqrt(widget.height_ratio))),
      shape: RoundedRectangleBorder(
          side: BorderSide(
              color: Colors.blue, width: 1, style: BorderStyle.solid),
          borderRadius: BorderRadius.circular(10)),
    );
  }
}
