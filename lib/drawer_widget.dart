import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  final chosen;
  const DrawerWidget({Key key, @required this.chosen}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: <Color>[
                  Colors.white,
                  Colors.white70
                ]
              )
            ), 
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  CustomListTile(
                    name: Text("Strona Główna", style: TextStyle(fontSize: 16.0),),
                    icon: Icon(Icons.home)
                  )
                ],)
            ),
          )
        ]
      ),
    );
  }
}

class CustomListTile extends StatelessWidget {
  final Text name;
  final Icon icon;
  const CustomListTile({Key key, @required this.name, @required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){},
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget> [
          icon,
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: name,
          )
        ]
      ),
    );
  }
}