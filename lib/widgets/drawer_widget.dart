import 'package:flutter/material.dart';
import 'package:wordie/design/design.dart';
import 'package:wordie/views/Contact_Page.dart';
import 'package:wordie/views/about_me_view.dart';
import 'package:wordie/views/additional_content.dart';
import 'package:wordie/views/all_addon.dart';
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
            leading: Icon(Icons.graphic_eq),
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
            leading: Icon(Icons.graphic_eq),
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
            leading: Icon(Icons.graphic_eq),
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
        ],
      ),
    );
  }
}