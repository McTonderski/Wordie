import 'package:flutter/material.dart';
import 'package:wordie/all_addon.dart';
import 'package:wordie/nav_bar.dart';

class AddonPage extends StatefulWidget{
  AddonPage();
  @override
  _AddonPageState createState() =>new  _AddonPageState();

}

class _AddonPageState extends State<AddonPage>{
  Widget build(BuildContext context){
    return Scaffold
    (appBar: AppBar(),
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Text(
            "Dodatkowe materiały",
            style: TextStyle(
              fontSize: 48,
              fontFamily: 'SourceSerifPro',  
            ),),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                
                ClipOval(
                  
                  child:Container(
                    width: 220,
                    height: 220,
                    color: Color.fromARGB(110, 85, 131, 84),
                    //decoration
                    child: FlatButton(
                      child: Text(
                        'Wszystkie',
                        style: TextStyle(fontSize: 35,fontFamily: 'SourceSerifPro',),),
                      onPressed: (){Navigator.push(context,MaterialPageRoute(builder:(context)=>AllAddonPage()));},
                    ),)
                ,),
                ClipOval(
                  child:Container(
                    width: 220,
                    height: 220,
                    color: Color.fromARGB(110, 85, 131, 84),
                    //decoration
                    child: FlatButton(
                      child: Text(
                        'Darmowe',
                      style: TextStyle(fontSize: 35,fontFamily: 'SourceSerifPro',),),
                      onPressed: (){},
                    ),)
                ,)
              ],
            ),
          )
        ],
      ),
      ),
      );
  }
}