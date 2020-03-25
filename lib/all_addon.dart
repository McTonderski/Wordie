import 'package:flutter/material.dart';

class AllAddonPage extends StatefulWidget{
  AllAddonPage();
  @override
  _AllAddonPageState createState() =>new  _AllAddonPageState();

}

class _AllAddonPageState extends State<AllAddonPage>{
  Widget build(BuildContext context){
    return Scaffold
    (appBar: AppBar(),
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Column(
            children: <Widget>[
              Text(
                "Dodatkowe materiały",
                style: TextStyle(
                fontSize: 40,
                //fontFamily:  
              ),
              ),
              Text(
                "Wszystkie",
                style: TextStyle(
                  fontSize: 25,
                ),

              )
            ],
          ),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    ClipOval(
                      child:Container(
                        width: 300,
                        height: 300,
                        decoration:BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('8_3.png'))
                        ),
                        child: RaisedButton(
                          child: Text(
                            'Pobierz za darmo',
                            style: TextStyle(
                              fontSize: 30),
                          ),
                          onPressed: (){},
                        ),
                      ),
                    ),
                    Text(
                      'PLAKATY: Zaimki osobowe',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    Text(
                      'Personlige pronomen',
                      style: TextStyle(
                        fontSize:30
                      ),
                    )
                  ],
                ),
                Column(
                  children: <Widget>[
                    ClipOval(
                      child:Container(
                        width: 300,
                        height: 300,
                        //decoration
                        child: RaisedButton(
                          child: Text(
                            '50 koron',
                            style: TextStyle(
                              fontSize: 30),
                          ),
                          onPressed: (){},
                        ),
                      ),
                    ),
                    Text(
                      'ZADANIA: Zaimki osobowe',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    Text(
                      'Personlige pronomen',
                      style: TextStyle(
                        fontSize:30
                      ),
                    )
                  ],
                ),
                Column(
                  children: <Widget>[
                    ClipOval(
                      child:Container(
                        width: 300,
                        height: 300,
                        //decoration
                        child: RaisedButton(
                          child: Text(
                            'Pobierz za darmo',
                            style: TextStyle(
                              fontSize: 30),
                          ),
                          onPressed: (){},
                        ),
                      ),
                    ),
                    Text(
                      'PLAKATY: Zaimki dzierżawcze ',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    Text(
                      'Eindomspronomen',
                      style: TextStyle(
                        fontSize:30
                      ),
                    )
                  ],
                )
              
              ],
            ),
          )
        ],
      ),
      ),
      );
  }
}