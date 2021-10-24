import 'package:flutter/material.dart';

final _icons = <String, IconData>{
  'food' : Icons.dinner_dining,
  'drink' : Icons.coffee,
  'snack' : Icons.icecream ,
  'combo' : Icons.fastfood,

};

Icon getIcon(String nombreIcono){
  return Icon(_icons[nombreIcono], color:Colors.green, size: 40,);
}