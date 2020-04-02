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
    body: SizedBox(
      height: MediaQuery.of(context).size.height,
        child: Center(
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Column(
              mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Flexible(
                fit: FlexFit.loose,
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
              
              Flexible(
                fit: FlexFit.loose,
                flex:1,
                child:Text(
                  "email@com",
                  style: TextStyle(
                  fontSize: 20,
                  //fontFamily:  
                  ),
                ), 
              ),

              Flexible(
                fit :FlexFit.loose,
                flex:6,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.all(10),
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
                          margin: EdgeInsets.all(10),
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
              Flexible(
                fit: FlexFit.loose,
                child: IconButton(
                  icon: Icon(Icons.mail),                  
                  onPressed: () {},                  
                  )
              )   
            ],
          ),
        ),
    ))
    );
  }
}