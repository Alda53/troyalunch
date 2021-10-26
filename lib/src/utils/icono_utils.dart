import 'package:flutter/material.dart';

final _icons = <String, IconData>{
  'food' : Icons.dinner_dining,
  'drink' : Icons.coffee,
  'snack' : Icons.icecream ,
  'combo' : Icons.fastfood,
  'favorite' : Icons.favorite,
  'gift' : Icons.card_giftcard,
  'card' : Icons.credit_card,
  'help' : Icons.help,
  'settings' : Icons.settings


};

Icon getIcon(String nombreIcono){
  return Icon(_icons[nombreIcono], color:Colors.green, size: 40,);
}