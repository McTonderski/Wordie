import 'dart:ui';

import 'package:flutter/material.dart';

import '../widgets/nav_bar.dart';

class ContactPage extends StatefulWidget{
  static const routeName = '/Contact';
  ContactPage();
  @override
  _ContactState createState() =>new  _ContactState();

}

class _ContactState extends State<ContactPage>{
  Widget build(BuildContext context){
    return Scaffold(
      drawerScrimColor: Colors.transparent,
      appBar: NavBarWordie(title: Text('Wordie'), widgets: <Widget>[],),
      body:Center(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(40),
                    child :Text(
                      "Kontakt",
                      style: TextStyle(
                        fontSize: 50,
                        fontFamily:  'SourceSerifPro',
                      ),
                      textAlign: TextAlign.center,
                      ),
                  ),
                  
                  Padding(
                    padding: EdgeInsets.all(20),
                    child:Text(
                      "angelika@wordie.no",
                      style: TextStyle(
                      fontSize: 20,
                      fontFamily:  'SourceSerifPro',
                      ),
                    ), 
                  ),

                  Container(
                    child: Padding(
                      padding: EdgeInsets.only(top:10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Container(
                                    margin: EdgeInsets.all(40),
                                    width: 300,
                                    child: TextField(
                                        decoration: InputDecoration(
                                        fillColor: Color.fromRGBO(225, 204, 130, 0.22),
                                        filled: true,
                                        hintText: 'Imie i nazwisko',
                                        ),
                                          autofocus: false,
                                        )
                                      ),
                                 
                                  Container(
                                    width: 300,
                                    child: TextField(
                                        decoration: InputDecoration(
                                        fillColor: Color.fromRGBO(225, 204, 130, 0.22),
                                        filled: true,
                                        hintText: 'Email',
                                        ),
                                          autofocus: false,
                                        )
                                      ),
                                 
                                  Container(
                                    margin: EdgeInsets.all(40),
                                    width: 300,
                                    child: TextField(
                                        decoration: InputDecoration(
                                        fillColor: Color.fromRGBO(225, 204, 130, 0.22),
                                        filled: true,
                                        hintText: 'Telefon',
                                        ),
                                          autofocus: false,
                                        )
                                      )
                                ]
                              ) ,
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                Container(
                                      margin: EdgeInsets.all(10),
                                      width: 400,
                                      child: TextField(
                                          keyboardType: TextInputType.multiline,
                                          maxLines: 11,
                                          //textAlign: TextAlign.center,
                                          selectionHeightStyle: BoxHeightStyle.max ,
                                          decoration: InputDecoration(
                                          fillColor: Color.fromRGBO(225, 204, 130, 0.22),
                                          filled: true,
                                          hintText: 'Wiadomość',
                                          ),
                                            autofocus: false,
                                          
                                        ),
                                    ),
                                ]
                              ),
                            ]
                        ),
                          ),
                    ),
                    Container(
                    child: IconButton(
                      icon: Icon(Icons.mail),                  
                      onPressed: () {},                  
                      )
                  )   
                ]),
              ),
            ),
          ),
    );
  }
}