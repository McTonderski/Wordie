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
              fontSize: 40,
              //fontFamily:  
            ),),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                ClipOval(
                  child:Container(
                    width: 300,
                    height: 300,
                    //decoration
                    child: RaisedButton(
                      child: Text(
                        'Wszystkie',
                        style: TextStyle(fontSize: 30),),
                      onPressed: (){Navigator.push(context,MaterialPageRoute(builder:(context)=>AllAddonPage()));},
                    ),)
                ,),
                ClipOval(
                  child:Container(
                    width: 300,
                    height: 300,
                    //decoration
                    child: RaisedButton(
                      child: Text(
                        'Darmowe',
                      style: TextStyle(fontSize: 30),),
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