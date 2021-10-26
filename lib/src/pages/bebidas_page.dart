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
          CardBebida(context, 0),
          SizedBox(height: 30.0,),
          CardBebida(context, 1),
          SizedBox(height: 30.0,),
          CardBebida(context, 2),
          SizedBox(height: 30.0,),
          CardBebida(context, 3),
          SizedBox(height: 30.0,),
          CardBebida(context, 4),
          SizedBox(height: 30.0,),
        ],
      ),
    );
  }
}