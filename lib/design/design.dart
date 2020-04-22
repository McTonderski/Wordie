// file with all global values, used across, views, widgets etc.

import 'package:flutter/material.dart';

//colors
final Color primaryBackgroundColor = Color(0xFFE5E5E5);
final Color registerButtonColor = Color(0x55835400);
final Color navBarLogInColor = Color(0xFFE1CC82);
final Color drawerColor = Color(0xFF558354);
final Color textColorBlack = Color(0xFF1A1A1A);

//fonts
final String primaryFont = 'SourceSerifPro';

//icons
final String navBarLogo = 'assets/images/BLACK_type_and_logo@2x2.png';

//default dimensions
final WINDOW_WIDTH = 1536;
final WINDOW_HEIGHT = 763.2000122070312;

//opacity
double calculateOpacity(BuildContext context){
  double aspect_ratio = MediaQuery.of(context).size.width*MediaQuery.of(context).size.height/(WINDOW_HEIGHT*WINDOW_WIDTH);
  if (aspect_ratio > 0.6){
    return 1;
  }else if(aspect_ratio > 0.55){
    return aspect_ratio;
  }else{
    return 0;
  }
}
