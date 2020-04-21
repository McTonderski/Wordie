import 'dart:html';

import 'package:flutter/material.dart';
import 'package:wordie/design/design.dart';
import 'package:wordie/views/all_addon.dart';
import 'package:wordie/widgets/nav_bar.dart';
import 'package:wordie/widgets/inputEmail.dart';

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
    return Scaffold(
        drawerScrimColor: Colors.transparent,
        appBar: NavBarWordie(),
        backgroundColor: primaryBackgroundColor,
        drawer: DrawerItemList(),
        body: Center(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                TextField(
                  style: TextStyle(
                    color: Colors.black,
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
