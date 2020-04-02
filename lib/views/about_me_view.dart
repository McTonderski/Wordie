import 'dart:math';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:wordie/widgets/nav_bar.dart';
import 'package:wordie/design/design.dart';
import 'package:wordie/widgets/drawer_widget.dart';

import '../widgets/drawer_widget.dart';

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
                                  "Håper vi ses snart!",
                                  ""];

  @override
  Widget build(BuildContext context){

    double height_ratio = MediaQuery.of(context).size.height/WINDOW_HEIGHT;
    double width_ratio = MediaQuery.of(context).size.width/WINDOW_WIDTH;

    return Scaffold(
      backgroundColor: primaryBackgroundColor,
      appBar: NavBarWordie(title: Text('Wordie'), widgets: <Widget>[],),
      drawer: DrawerItemList(),
      body: SafeArea(
        child: Center(
          child: ListView(
              children: <Widget>[
                LayoutBuilder(
                  builder: (context, constraints){
                    if (constraints.maxWidth < 500){
                      return Container(
                        child: Align(
                          alignment: Alignment.center,
                          child: CircleAvatar(
                            backgroundImage: AssetImage('assets/images/11.png'),
                            radius: 90*sqrt(width_ratio*height_ratio),
                            ),
                        ),
                      );
                    }else{
                      return SizedBox(height: 30*width_ratio);
                    }
                  }
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(104*pow(width_ratio,2), 0, 105*pow(width_ratio,2), 0),
                  child: Container(
                    width: 943*width_ratio,
                    height: 548*height_ratio,
                    child: Stack( 
                      children: <Widget>[
                        Positioned(
                          bottom: 0,
                          left: 368*width_ratio,
                          right: 91*width_ratio,
                          top: 73*height_ratio,
                          child: Container(
                            width: 484*pow(width_ratio,2),
                            height: 475*pow(height_ratio,2),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xFFB6CAB5),
                              )
                            ),
                        ),
                        Positioned(
                          top: 52*height_ratio,
                          right: 175*width_ratio,
                          child: Opacity(
                            opacity: calculateOpacity(context),
                            child: CircleAvatar(
                              backgroundImage: AssetImage('assets/images/11.png'),
                              radius: 193*sqrt(width_ratio*height_ratio),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 2*height_ratio,
                          left: 200*pow(width_ratio, 2),
                          bottom: 2*height_ratio,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'Poznaj mnie',
                                style: TextStyle(
                                  fontSize: 48*sqrt(height_ratio),
                                ),
                              ),
                              SizedBox(height: 20*height_ratio,),
                              Container(
                                width: width_ratio > 0.4 ? 481 : 300,
                                height: 465*height_ratio,
                                child: Padding(
                                  padding: EdgeInsets.fromLTRB(0, 0, 0, 10*height_ratio),
                                  child: Scrollbar(
                                    child: ListView.builder(
                                      itemCount: ABOUT_ME.length,
                                      shrinkWrap: true,
                                      itemBuilder: (context, sentence){
                                      return Text(
                                        ABOUT_ME[sentence],
                                        style: TextStyle(
                                          fontWeight: FontWeight.w300,
                                          fontSize: 16*sqrt(sqrt(height_ratio)),
                                          fontFamily: primaryFont
                                        )
                                      );
                                      }
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
        ),
      ),
    );
  }

}