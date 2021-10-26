import 'package:flutter/material.dart';
import 'package:troyalunch/widgets/CardBebida.dart';

class BebidasPage extends StatelessWidget {
  const BebidasPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bebidas'),
        backgroundColor: Colors.green,
      ),
      body: ListView(
        padding: EdgeInsets.all(20),
        children:<Widget> [
          cardBebida(context, 0),
          SizedBox(height: 30.0,),
          cardBebida(context, 1),
          SizedBox(height: 30.0,),
          cardBebida(context, 2),
          SizedBox(height: 30.0,),
          cardBebida(context, 3),
          SizedBox(height: 30.0,),
          cardBebida(context, 4),
          SizedBox(height: 30.0,),
        ],
      ),
    );
  }
}