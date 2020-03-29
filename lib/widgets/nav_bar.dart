import 'package:flutter/material.dart';
import 'package:wordie/design/design.dart';

class NavBarWordie extends StatelessWidget implements PreferredSizeWidget{
  final Text title;
  final List<Widget> widgets;
  const NavBarWordie({Key key, this.title = const Text('Wordie'), this.widgets})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: primaryBackgroundColor,
      centerTitle: true,
      elevation: 0,
      flexibleSpace: Stack(
        children : <Widget>[
          Center(
            child: Column(
              children: <Widget>[
                SizedBox(height: 20,),
                Image(
                  image: AssetImage(navBarLogo)
                ),
                Divider(
                  height: 17,
                  thickness: 2,
                  color: Color(0xFF959595),
                  indent: 105.0,
                  endIndent: 105.0,
                ),
                SizedBox(height: 1)
              ],
            ),
          ),
          Positioned(
            top: 25, 
            right: 105,
            child: FlatButton(
              onPressed: () {},
              color: navBarLogInColor,
              padding: EdgeInsets.fromLTRB(40, 3, 40, 2),
              child: Text(
                'Zaloguj się',
                style: TextStyle(
                  fontFamily: primaryFont,
                  fontSize: 18
                )
              )
            )
          )
        ]
      ),
    );
  }

  @override
  Size get preferredSize => new Size.fromHeight(120);
}