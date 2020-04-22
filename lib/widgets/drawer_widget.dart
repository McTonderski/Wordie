import 'package:flutter/material.dart';
import 'package:wordie/design/design.dart';
import 'package:wordie/views/Contact_Page.dart';
import 'package:wordie/views/about_me_view.dart';
import 'package:wordie/views/additional_content.dart';
import 'package:wordie/views/all_addon.dart';
import 'package:wordie/widgets/login_button_drawer.dart';
import '../views/about_me_view.dart';
import '../views/additional_content.dart';

class DrawerItemList extends StatelessWidget {
  String getCurrentRouteName(context) {
    String currentRouteName;

    Navigator.popUntil(context, (route) {
      currentRouteName = route.settings.name;
      return true;
    });

    return currentRouteName;
  }

  @override
  Widget build(BuildContext context) {
    String currentRoute = getCurrentRouteName(context);

    
    double window_width = MediaQuery.of(context).size.width;
    double window_height = MediaQuery.of(context).size.height;
    double width_ratio = window_width/WINDOW_WIDTH;
    double height_ratio = window_height/WINDOW_HEIGHT;

    return Container(
      width: WINDOW_WIDTH*0.15,
      color: drawerColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          ListTileTheme(
            selectedColor: navBarLogInColor,
            textColor: textColorBlack,
            child: ListTile(
              leading: Icon(Icons.home),
              title: Text(
                'Strona Główna',
                style: TextStyle(
                  fontFamily: primaryFont
                )
                ),
              selected: currentRoute == AboutMeView.routeName,
              onTap: () {
                if (currentRoute == AboutMeView.routeName) return;
                currentRoute = AboutMeView.routeName;
                Navigator.pushReplacementNamed(
                  context,
                  AboutMeView.routeName,
                );
              },
            ),
          ),
          ListTileTheme(
            selectedColor: navBarLogInColor,
            textColor: textColorBlack,
            child: ListTile(
              leading: Icon(Icons.list),
              title: Text(
                'Kurs',
                style: TextStyle(
                  color: textColorBlack,
                  fontFamily: primaryFont
                )
                ),
              selected: currentRoute == AddonPage.routeName,
              onTap: () {
                if (currentRoute == AddonPage.routeName) return;
                currentRoute = AddonPage.routeName;
                Navigator.pushReplacementNamed(
                  context,
                  AddonPage.routeName,
                );
              },
            ),
          ),
          ListTileTheme(
            selectedColor: navBarLogInColor,
            textColor: textColorBlack,
            child: ListTile(
              title: Text(
                'Dodatkowe materialy',
                style: TextStyle(
                  color: textColorBlack,
                  fontFamily: primaryFont
                )
                ),
              leading: Icon(Icons.assignment),
              selected: currentRoute == AddonPage.routeName,
              onTap: () {
                if (currentRoute == AddonPage.routeName) return;
                currentRoute = AddonPage.routeName;
                Navigator.pushReplacementNamed(
                  context,
                  AddonPage.routeName,
                );
              },
            ),
          ),
          ListTileTheme(
            selectedColor: navBarLogInColor,
            textColor: textColorBlack,
            child: ListTile(
              title: Text(
                'Poznaj mnie',
                style: TextStyle(
                  color: textColorBlack,
                  fontFamily: primaryFont
                )
                ),
              leading: Icon(Icons.person_outline),
              selected: currentRoute == AboutMeView.routeName,
              onTap: () {
                if (currentRoute == AboutMeView.routeName) return;
                currentRoute = AboutMeView.routeName;
                Navigator.pushReplacementNamed(
                  context,
                  AboutMeView.routeName,
                );
              },
            ),
          ),
          ListTileTheme(
            selectedColor: navBarLogInColor,
            textColor: textColorBlack,
            child: ListTile(
              title: Text(
                'Kontakt',
                style: TextStyle(
                  color: textColorBlack,
                  fontFamily: primaryFont
                )
                ),
              leading: Icon(Icons.mail),
              selected: currentRoute == ContactPage.routeName,
              onTap: () {
                if (currentRoute == ContactPage.routeName) return;
                currentRoute = ContactPage.routeName;
                Navigator.pushReplacementNamed(
                  context,
                  ContactPage.routeName,
                );
              },
            ),
          ),
          LoginButton(width_ratio: width_ratio, height_ratio: height_ratio,)
        ],
      ),
    );
  }
}