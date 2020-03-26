import 'dart:ui';

import 'package:flutter/material.dart';

class ContactPage extends StatefulWidget{
  ContactPage();
  @override
  _ContactState createState() =>new  _ContactState();

}

class _ContactState extends State<ContactPage>{
  Widget build(BuildContext context){
    return Scaffold
    (appBar: AppBar(),
    body: Center(
      child: Column(
        
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Spacer(),
          Expanded(
            flex: 2,
            child :Text(
              "Kontakt",
              style: TextStyle(
                fontSize: 40,
                //fontFamily:  
              ),
              textAlign: TextAlign.center,
              ),
          ),
          
          Expanded(
            flex:1,
            child:Text(
              "email@com",
              style: TextStyle(
              fontSize: 20,
              //fontFamily:  
              ),
            ), 
          ),

          Expanded(
            flex:5,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Row(children: <Widget>[
                      Container(
                        width: 300,
                        child: TextField(
                            decoration: InputDecoration(
                            fillColor: Color.fromRGBO(225, 204, 130, 0.22),
                            filled: true,
                            hintText: 'Imie i nazwisko',
                            ),
                              autofocus: false,
                            )
                          )
                    ],),
                    Row(children: <Widget>[
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
                          )
                    ],),
                    Row(children: <Widget>[
                      Container(
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
                    ],)
                  ]
                ) ,
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                   Container(
                        margin: EdgeInsets.all(12),
                        width: 400,
                        height: 7 * 24.0,
                        child: TextField(
                            selectionHeightStyle: BoxHeightStyle.max ,
                            decoration: InputDecoration(
                            fillColor: Color.fromRGBO(225, 204, 130, 0.22),
                            filled: true,
                            hintMaxLines: 7,
                            hintText: 'Wiadomość',
                            ),
                              autofocus: false,
                            
                          ),
                      ),
                  ]
                ),
              ]
            ),
          )   
        ],
      ),
    ),
    );
  }
}