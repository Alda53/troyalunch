import 'package:flutter/material.dart';
import 'package:troyalunch/src/home_page.dart';
import 'package:troyalunch/src/pages/inicio.dart';

Map<String, WidgetBuilder>getRoutes(){
  return<String, WidgetBuilder> {
    'pantalla_inicial'     : (BuildContext context) => Inicio(),
    '/'     : (BuildContext context) => HomePage(),
    //'alert' : (BuildContext context) => AlertPage()
  };
}