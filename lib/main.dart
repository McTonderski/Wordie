import 'package:flutter/material.dart';
import 'package:wordie/views/additional_content.dart';
import 'package:wordie/views/all_addon.dart';
import 'package:wordie/widgets/drawer_widget.dart';
import 'package:wordie/widgets/nav_bar.dart';
import 'package:wordie/views/about_me_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: AddonPage(),
      routes: {
        AllAddonPage.routeName: (context) => AllAddonPage(),
        AddonPage.routeName:(context)=>AddonPage()
      },
    );
  }
}
