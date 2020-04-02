import 'dart:html';

import 'package:flutter/material.dart';

import 'package:wordie/design/design.dart';

class LoginButton extends StatefulWidget {
  final double window_width;
  final double window_height;
  final double width_ratio;
  final double height_ratio;
  LoginButton({Key key, this.window_width, this.window_height, this.width_ratio, this.height_ratio}) : super(key: key);

  @override
  _LoginButtonState createState() => _LoginButtonState();
}

class _LoginButtonState extends State<LoginButton> {
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: () {},
      color: navBarLogInColor,
      padding: EdgeInsets.fromLTRB(40*width_ratio, 3*height_ratio, 40*width_ratio, 2*height_ratio),
      child: Text(
        'Zaloguj się',
        style: TextStyle(
          fontFamily: primaryFont,
          fontSize: 18*sqrt(height_ratio)
        )
      )
    )
  ],
),
);
  }
}