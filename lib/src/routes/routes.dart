import 'package:flutter/material.dart';
import 'package:troyalunch/src/pages/cover_page.dart';
import 'package:troyalunch/src/pages/inicio_page.dart';
import 'package:troyalunch/src/pages/menu_page.dart';
import 'package:troyalunch/src/pages/platillos_page.dart';
import 'package:troyalunch/src/pages/primera_page.dart';

//Título que apunta a las funciones de cada archivo

Map<String, WidgetBuilder>getRoutes(){
  return<String, WidgetBuilder> {
    'primera_page': (BuildContext context) => PrimeraPage(),
    'inicio_page': (BuildContext context) => InicioPage(),
    'cover_page': (BuildContext context) => CoverPage(),
    'menu_page': (BuildContext context) => MenuPage(),
    'platillos_page': (BuildContext context) => Platillos(),
  };

}