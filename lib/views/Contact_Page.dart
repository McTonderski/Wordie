import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:wordie/design/design.dart';
import 'package:wordie/widgets/drawer_widget.dart';

import '../widgets/nav_bar.dart';

class ContactPage extends StatefulWidget {
  static const routeName = '/Contact';
  ContactPage();
  @override
  _ContactState createState() => new _ContactState();
}

 Widget multilineText(hinttext) {
    return Container(
      margin: EdgeInsets.all(20),
      width: 400,
      child: TextField(
        keyboardType: TextInputType.multiline,
        maxLines: 11,
        //textAlign: TextAlign.center,
        selectionHeightStyle: BoxHeightStyle.max,
        decoration: InputDecoration(
          fillColor:
              Color.fromRGBO(225, 204, 130, 0.22),
          filled: true,
          hintText: hinttext,
        ),
        autofocus: false,
      ),
    );
 }

 Widget textFieldUsed(hinttext) {
    return Container(
      margin: EdgeInsets.all(20),
      width: 300,
      child: TextField(
        decoration: InputDecoration(
          fillColor: Color.fromRGBO(
              225, 204, 130, 0.22),
          filled: true,
          hintText: hinttext,
        ),
        autofocus: false,
      ));
 }





class _ContactState extends State<ContactPage> {
  Widget build(BuildContext context) {
    return Scaffold(
      drawerScrimColor: Colors.transparent,
      drawer: DrawerItemList(),
      appBar: NavBarWordie(),
      backgroundColor: primaryBackgroundColor,
      body: Center(
        child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(40),
                  child: Text(
                    "Kontakt",
                    style: TextStyle(
                      fontSize: 50,
                      fontFamily: 'SourceSerifPro',
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(20),
                  child: Text(
                    "angelika@wordie.no",
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'SourceSerifPro',
                    ),
                  ),
                ),
                Center(
                  child: Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: LayoutBuilder(builder: (context, constraints) {
                           if (constraints.maxWidth >700) {
                              return  SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                  child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    textFieldUsed("Imie i Nazwisko"),
                                    textFieldUsed("Email"),
                                    textFieldUsed("Telefon")
                                  ]),
                                  Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                  multilineText("Wiadomość")  
                                  ]),
                                ]));
                            } else {
                              return  Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                textFieldUsed("Imie i Nazwisko"),
                                textFieldUsed("Email"),
                                textFieldUsed("Telefon"),
                                multilineText("Wiadomość"),
                                Container(
                                    child: IconButton(
                                  icon: Icon(Icons.mail),
                                  onPressed: () {},
                                ))  
                              ]
                                );
                            }
                    }                       
                    ),
                  ),
                ),
                
              ]),
        ),
      ),
    );
  }
}
