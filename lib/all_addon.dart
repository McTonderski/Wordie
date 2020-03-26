import 'package:flutter/material.dart';
import 'package:wordie/nav_bar.dart';

class AllAddonPage extends StatefulWidget {
  AllAddonPage();

  @override
  _AllAddonPageState createState() => new _AllAddonPageState();
}

class _AllAddonPageState extends State<AllAddonPage> {
  List<Widget> addons() {
    return List.of([
      Container(child:
      Column(
        children: <Widget>[
          ClipOval(
            child: Container(
              width: 220,
              height: 220,
              
              decoration: BoxDecoration(
                  color: Color.fromARGB(110, 85, 131, 84),
                  image: DecorationImage(
                    image: AssetImage('assets/8_1.png'),
                    fit: BoxFit.fitHeight
                    )
                    ),
              child: FlatButton(
                
                child: Text(
                  'Pobierz \nza darmo',
                  style: TextStyle(
                    fontSize: 35,
                    fontFamily: 'SourceSerifPro',
                    fontWeight: FontWeight.bold
                    ),
                  
                ),
                onPressed: () {},
              ),
            ),
          ),
          Text(
            'PLAKATY: Zaimki osobowe',
            style: TextStyle(fontSize: 25, 
            fontFamily: 'SourceSerifPro',
            fontWeight: FontWeight.bold
            ),
          ),
          Text(
            'Personlige pronomen',
            style: TextStyle(fontSize: 25,fontFamily: 'SourceSerifPro',),
          )
        ],
      ),
      ),
      Container(child:
      Column(
        children: <Widget>[
          ClipOval(
            child: Container(
              width: 220,
              height: 220,
              decoration: BoxDecoration(
                  color: Color.fromARGB(110, 85, 131, 84),
                  image: DecorationImage(
                    image: AssetImage('assets/8_2.png'),
                    fit: BoxFit.fitHeight
                    )
                    ),
              child: FlatButton(
                child: Text(
                  '50 koron',
                  style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold,fontFamily: 'SourceSerifPro',),
                ),
                onPressed: () {},
              ),
            ),
          ),
          Text(
            'ZADANIA: Zaimki osobowe',
            style: TextStyle(fontSize: 25, fontFamily: 'SourceSerifPro',fontWeight: FontWeight.bold),
          ),
          Text(
            'Personlige pronomen',
            style: TextStyle(fontSize: 25,fontFamily: 'SourceSerifPro',),
          )
        ],
      ),
      ),
      Container(child:
      Column(
        children: <Widget>[
          ClipOval(
            child: Container(
              width: 220,
              height: 220,
              decoration: BoxDecoration(
                  color: Color.fromARGB(110, 85, 131, 84),
                  image: DecorationImage(
                    image: AssetImage('assets/8_3.png')
                    ,fit: BoxFit.fitHeight
                    )
                    ),
              child: FlatButton(
                child: Text(
                  'Pobierz \nza darmo',
                  style: TextStyle(fontSize: 35,fontFamily: 'SourceSerifPro',fontWeight: FontWeight.bold,),
                ),
                onPressed: () {},
              ),
            ),
          ),
          Text(
            'PLAKATY: Zaimki dzierżawcze ',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold,fontFamily: 'SourceSerifPro',),
          ),
          Text(
            'Eindomspronomen',
            style: TextStyle(fontSize: 25,fontFamily: 'SourceSerifPro',),
          )
        ],
      )
      )
    ]);
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Column(
              children: <Widget>[
                Text(
                  "Dodatkowe materiały",
                  style: TextStyle(
                    fontSize: 48,
                    fontFamily: 'SourceSerifPro',
                  ),
                ),
                Text(
                  "Wszystkie",
                  style: TextStyle(
                    fontSize: 35,
                    fontFamily: 'SourceSerifPro',
                  ),
                )
              ],
            ),
            Center(child: 
            LayoutBuilder(builder: (context, constraints) {
              if (constraints.maxWidth > 600) {
                return SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: addons())
                        );
              } else {
                return SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: addons())
                        );
              }
            })
            )
          ],
        ),
      ),
    );
  }
}
