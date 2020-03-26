import 'package:flutter/material.dart';
import 'package:wordie/nav_bar.dart';

class AllAddonPage extends StatefulWidget {
  AllAddonPage();

  @override
  _AllAddonPageState createState() => new _AllAddonPageState();
}

class _AllAddonPageState extends State<AllAddonPage> {
  Widget addon(imagePath, textIn, textMain, textSec) {
    return Container(
      padding: const EdgeInsets.all(35.0),
      child: Column(
        children: <Widget>[
          ClipOval(
            child: Container(
              width: 220,
              height: 220,
              decoration: BoxDecoration(
                  color: Color.fromARGB(110, 85, 131, 84),
                  image: DecorationImage(
                      image: AssetImage(imagePath), fit: BoxFit.fitHeight)),
              child: FlatButton(
                child: Text(
                  textIn,
                  style: TextStyle(
                      fontSize: 35,
                      fontFamily: 'SourceSerifPro',
                      fontWeight: FontWeight.bold),
                ),
                onPressed: () {},
              ),
            ),
          ),
          Text(
            textMain,
            style: TextStyle(
                fontSize: 25,
                fontFamily: 'SourceSerifPro',
                fontWeight: FontWeight.bold),
          ),
          Text(
            textSec,
            style: TextStyle(
              fontSize: 25,
              fontFamily: 'SourceSerifPro',
            ),
          )
        ],
      ),
    );
  }

  List<Widget> addons() {
    return List.of([
      addon('assets/8_1.png', 'Pobierz \nza darmo', 'PLAKATY: Zaimki osobowe',
          'Personlige pronomen'),
      addon('assets/8_2.png', '50 koron', 'ZADANIA: Zaimki osobowe',
          'Personlige pronomen'),
      addon('assets/8_3.png', 'Pobierz \nza darmo',
          'PLAKATY: Zaimki dzierżawcze', 'Eindomspronomen')
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
            Center(child: LayoutBuilder(builder: (context, constraints) {
              if (constraints.maxWidth > 600) {
                return SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: addons()));
              } else {
                return SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: addons()));
              }
            }))
          ],
        ),
      ),
    );
  }
}
