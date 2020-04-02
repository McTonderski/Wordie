import 'dart:math';
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

    double height_ratio = MediaQuery.of(context).size.height/WINDOW_HEIGHT;
    double width_ratio = MediaQuery.of(context).size.width/WINDOW_WIDTH;

    return Scaffold(
      backgroundColor: primaryBackgroundColor,
      appBar: NavBarWordie(title: Text('Wordie'), widgets: <Widget>[],),
      body: ListView(
          children: <Widget>[
            SizedBox(height: 50.0*height_ratio,),
            Padding(
              padding: EdgeInsets.fromLTRB(104*width_ratio, 0, 105*width_ratio, 0),
              child: Container(
                width: 943*width_ratio,
                height: 548*height_ratio,
                child: Stack( 
                  children: <Widget>[
                    Positioned(
                      bottom: 0,
                      left: 368*width_ratio,
                      right: 91*height_ratio,
                      top: 73*width_ratio,
                      child: Container(
                        width: 484*width_ratio,
                        height: 475*height_ratio,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xFFB6CAB5)
                          )
                        ),
                    ),
                    Positioned(
                      top: 52*height_ratio,
                      right: 175*width_ratio,
                      child: CircleAvatar(
                        backgroundImage: AssetImage('assets/images/11.png'),
                        radius: 193*sqrt(width_ratio*height_ratio),
                      ),
                    ),
                    Positioned(
                      top: 0,
                      left: 200*width_ratio,
                      child: Text(
                        'Poznaj mnie',
                        style: TextStyle(
                          fontSize: 48*sqrt(height_ratio),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 200*width_ratio,
                      bottom: 0,
                      child: Container(
                        width: 481*width_ratio,
                        height: 465*width_ratio,
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