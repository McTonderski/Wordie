import 'package:flutter/material.dart';
import 'package:wordie/design/design.dart';
import 'package:wordie/views/Contact_Page.dart';
import 'package:wordie/views/about_me_view.dart';
import 'package:wordie/views/additional_content.dart';
import 'package:wordie/views/all_addon.dart';
import 'package:wordie/widgets/login_button.dart';
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
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Strona Główna'),
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
          ListTile(
            leading: Icon(Icons.list),
            title: Text('Kurs'),
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
          ListTile(
            title: Text('Dodatkowe materiały'),
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
          ListTile(
            title: Text('Poznaj mnie'),
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
          ListTile(
            title: Text('Kontakt'),
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
          LoginButton(window_height: window_height, window_width: window_width, width_ratio: width_ratio, height_ratio: height_ratio,)
        ],
      ),
    );
  }
}