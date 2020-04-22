import 'dart:html';

import 'package:flutter/material.dart';
import 'package:wordie/design/design.dart';
import 'package:wordie/views/all_addon.dart';
import 'package:wordie/widgets/inputPassword.dart';
import 'package:wordie/widgets/login_button_login_screen.dart';
import 'package:wordie/widgets/nav_bar.dart';
import 'package:wordie/widgets/inputEmail.dart';
import 'package:wordie/widgets/register_button.dart';

import '../widgets/drawer_widget.dart';
import '../widgets/nav_bar.dart';

class LoginPage extends StatefulWidget {
  static const routeName = '/Login';
  LoginPage();

  @override
  _LoginPageState createState() => new _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  
  Widget addon(textIn, [nextPage]) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
        child: ClipOval(
          child: Container(
            width: 220,
            height: 220,
            color: Color.fromARGB(110, 85, 131, 84),
            //decoation
            child: FlatButton(
              child: Text(
                textIn,
                style: TextStyle(
                  fontSize: 35,
                  fontFamily: 'SourceSerifPro',
                ),
              ),
              onPressed: () {
                if (nextPage != '') {
                  Navigator.pushReplacementNamed(context, nextPage);
                }
              },
            ),
          ),
        ));
  }

  Widget build(BuildContext context) {
    double window_width = MediaQuery.of(context).size.width;
    double window_height = MediaQuery.of(context).size.height;
    double width_ratio = window_width/WINDOW_WIDTH;
    double height_ratio = window_height/WINDOW_HEIGHT;
    return Scaffold(
      drawerScrimColor: Colors.transparent,
      appBar: NavBarWordie(),
      backgroundColor: primaryBackgroundColor,
      drawer: DrawerItemList(),
      body: Align(
          alignment: Alignment.topCenter,
          child: Column(children: <Widget>[
            InputEmail(), 
            InputPassword(),
            LoginButtonLogIn(width_ratio: width_ratio, height_ratio: height_ratio,),
            SizedBox(height: 15.0,),
            Text("New here?"),
            RegisterButtonLogIn(width_ratio: width_ratio, height_ratio: height_ratio,)
            ])),
    );
  }
}
