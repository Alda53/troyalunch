import 'package:flutter/material.dart';
import 'package:troyalunch/widgets/CardBebida.dart';
import 'package:troyalunch/widgets/CardPlatillo.dart';
import 'package:troyalunch/widgets/CardSnack.dart';

class InicioPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TroyaLUNCH'),
        centerTitle: true,
        backgroundColor: Colors.green,
        automaticallyImplyLeading: false,
      ),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          cardBebida(context, 3),
          SizedBox(height: 30.0,),
          cardPlatillo(context, 0),
          SizedBox(height: 30.0,),
          cardSnack(context, 2),
          SizedBox(height: 30.0,),
          cardBebida(context, 0),
          SizedBox(height: 30.0,),
          cardPlatillo(context, 1),
        ],
      ),
    );
  }
}

