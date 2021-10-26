import 'package:flutter/material.dart';
import 'package:troyalunch/widgets/CardBebida.dart';
import 'package:troyalunch/widgets/CardPlatillo.dart';
import 'package:troyalunch/widgets/CardSnack.dart';

class InicioPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Conoce platillos'),
        centerTitle: true,
        backgroundColor: Colors.green,
        automaticallyImplyLeading: false,
      ),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          CardBebida(context, 3),
          SizedBox(height: 30.0,),
          CardPlatillo(context, 0),
          SizedBox(height: 30.0,),
          CardSnack(context, 2),
          SizedBox(height: 30.0,),
          CardBebida(context, 0),
          SizedBox(height: 30.0,),
          CardPlatillo(context, 1),
        ],
      ),
    );
  }
}

