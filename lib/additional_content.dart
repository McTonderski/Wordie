import 'package:flutter/material.dart';
import 'package:wordie/all_addon.dart';
import 'package:wordie/nav_bar.dart';

class AddonPage extends StatefulWidget {
  AddonPage();

  @override
  _AddonPageState createState() => new _AddonPageState();
}

class _AddonPageState extends State<AddonPage> {
  Widget addon(textIn,[nextPage]) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 100, vertical: 30),
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
                if(nextPage!=null){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => nextPage));}
              },
            ),
          ),
        ));
  }

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Center(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text(
                  "Dodatkowe materiały",
                  style: TextStyle(
                    fontSize: 48,
                    fontFamily: 'SourceSerifPro',
                  ),
                ),
                Center(child: LayoutBuilder(builder: (context, constraints) {
                  if (constraints.maxWidth > 600) {
                    return SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              addon('Wszystkie',AllAddonPage()),
                              addon('Darmowe')
                            ]));
                  } else {
                    return SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              addon('Wszystkie',AllAddonPage()),
                              addon('Darmowe',(){})
                            ]));
                  }
                })
                    // child: Row(
                    //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    //   children: <Widget>[

                    //     addon('Wszystkie'),
                    //     addon('Darmowe')
                    //   ],
                    // ),
                    )
              ],
            ),
          ),
        ));
  }
}
