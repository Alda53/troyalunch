import 'package:flutter/material.dart';
import 'package:troyalunch/src/pages/bebidas_page.dart';
import 'package:troyalunch/src/pages/cover_page.dart';
import 'package:troyalunch/src/pages/inicio_page.dart';
import 'package:troyalunch/src/pages/menu_page.dart';
import 'package:troyalunch/src/pages/primera_page.dart';
import 'package:troyalunch/widgets/bebidas.dart';
import 'package:troyalunch/widgets/paquetes.dart';
import 'package:troyalunch/widgets/platillos_page.dart';
import 'package:troyalunch/widgets/snacks.dart';

//Título que apunta a las funciones de cada archivo

Map<String, WidgetBuilder>getRoutes(){
  return<String, WidgetBuilder> {
    'primera_page': (BuildContext context) => PrimeraPage(),
    'inicio_page': (BuildContext context) => InicioPage(),
    'cover_page': (BuildContext context) => CoverPage(),
    'menu_page': (BuildContext context) => MenuPage(),
    'bebidas_page': (BuildContext context) => BebidasPage(),
    'bebidas': (BuildContext context) => Bebidas(),
    'platillos_page': (BuildContext context) => Platillos(),
    'snacks_page': (BuildContext context) => Snacks(),
    'paquetes_page': (BuildContext context) => Paquetes(),
  };

}