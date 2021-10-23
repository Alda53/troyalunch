import 'package:flutter/material.dart';
import 'package:troyalunch/src/home_page.dart';
import 'package:troyalunch/src/pages/inicio_page.dart';
import 'package:troyalunch/src/pages/primera_page.dart';

//Título que apunta a las funciones de cada archivo

Map<String, WidgetBuilder>getRoutes(){
  return<String, WidgetBuilder> {
    'primera_page' : (BuildContext context) => PrimeraPage(),
    'pantalla_inicial'     : (BuildContext context) => Inicio(),
    '/'     : (BuildContext context) => HomePage(),
    //'alert' : (BuildContext context) => AlertPage()
  };
}