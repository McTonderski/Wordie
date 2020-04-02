import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:wordie/widgets/nav_bar.dart';
import 'package:wordie/design/design.dart';

class AboutMeView extends StatelessWidget{

  static const routeName = '/about_me';

  final  List<String> ABOUT_ME = ['Mam na imię Angelika, choć większość osob nazywa mnie Angie.',
                                  "",
                                  "Urodziłam się na Śląsku, gdzie mieszkałam przez 12 lat, aż rodzice postanowili, że wyjedziemy do słonecznej Hiszpanii, Mieszkałam tam 10 lat: uczyłam się pilnie, pracowałam…",
                                  "",
                                  "Do momentu kiedy znalazłam ofertę wolontariatu w Norwegii, wiedziałam o kraju tyle, że są tam fiordy, trolle i jest bardzo zimno. Dziś mieszkam na stałe w Bergen i bardzo mi się tu podoba.",
                                  "",
                                  "Jako nauczycielka języków obcych zaczęłam pracować dorywczo jakieś 10 lat temu. Na dzień dzisiejszy zajmuję się tym na pełny etat w mojej małej akademii językowej.",
                                  "",
                                  "Do zobaczenia wkrótce!",
                                  "Håper vi ses snart!"];

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: primaryBackgroundColor,
      appBar: NavBarWordie(title: Text('Wordie'), widgets: <Widget>[],),
      body: ListView(
          children: <Widget>[
            SizedBox(height: 50.0,),
            Padding(
              padding: EdgeInsets.fromLTRB(104, 0, 105, 0),
              child: Container(
                width: 943,
                height: 548,
                child: Stack( 
                  children: <Widget>[
                    Positioned(
                      top: 0,
                      left: 200,
                      child: Text(
                        'Poznaj mnie',
                        style: TextStyle(
                          fontSize: 48,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 200,
                      bottom: 0,
                      child: Container(
                        width: 481,
                        height: 465,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: ABOUT_ME.map((sentece) => Text(
                            sentece,
                            style: TextStyle(
                              fontWeight: FontWeight.w300,
                              fontSize: 16,
                              fontFamily: primaryFont
                            )
                          )).toList()
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      left: 368,
                      right: 91,
                      top: 73,
                      child: Container(
                        width: 484,
                        height: 475,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xFFB6CAB5)
                          )
                        ),
                    ),
                    Positioned(
                      top: 52,
                      right: 175,
                      child: CircleAvatar(
                        backgroundImage: AssetImage('assets/images/11.png'),
                        radius: 193,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20,)
          ],
        ),
    );
  }

}