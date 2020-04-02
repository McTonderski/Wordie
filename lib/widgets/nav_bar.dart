import 'dart:math';
import 'package:flutter/material.dart';
import 'package:wordie/design/design.dart';

class NavBarWordie extends StatelessWidget implements PreferredSizeWidget{
  final Text title;
  final List<Widget> widgets;
  const NavBarWordie({Key key, this.title = const Text('Wordie'), this.widgets})
      : super(key: key);

  @override
  Widget build(BuildContext context) {

    double window_width = MediaQuery.of(context).size.width;
    double window_height = MediaQuery.of(context).size.height;
    double width_ratio = window_width/WINDOW_WIDTH;
    double height_ratio = window_height/WINDOW_HEIGHT;

    return SafeArea(
      child: AppBar(
        leading: new Container(),
        backgroundColor: primaryBackgroundColor,
        centerTitle: true,
        elevation: 0,
        flexibleSpace: Center(
          child: Column(
            children: <Widget>[
              SizedBox(height: 20*height_ratio,),
              Padding(
                padding: EdgeInsets.fromLTRB(105*width_ratio, 0, 105*width_ratio, 10*height_ratio),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    IconButton(icon: new Icon(Icons.apps), onPressed: () => Scaffold.of(context).openDrawer()),
                    Container(
                      constraints: BoxConstraints(maxHeight: 66*sqrt(height_ratio) , maxWidth: 247*sqrt(width_ratio)),
                      child: FittedBox(
                        fit: BoxFit.contain,
                        child: Image(
                          image: AssetImage(navBarLogo),
                          width: 247,
                          height: 66,
                        ),
                      ),
                    ),
                    FlatButton(
                      onPressed: () {},
                      color: navBarLogInColor,
                      padding: EdgeInsets.fromLTRB(40*width_ratio, 3*height_ratio, 40*width_ratio, 2*height_ratio),
                      child: Text(
                        'Zaloguj się',
                        style: TextStyle(
                          fontFamily: primaryFont,
                          fontSize: 18*sqrt(height_ratio)
                        )
                      )
                    )
                  ],
                ),
              ),
              SizedBox(height: 5*height_ratio,),
              Divider(
                height: 17,
                thickness: 2,
                color: Color(0xFF959595),
                indent: 105.0*width_ratio,
                endIndent: 105.0*width_ratio,
              ),
              SizedBox(height: 1)
            ],
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => new Size.fromHeight(120);
}