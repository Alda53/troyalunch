import 'package:flutter/material.dart';
import 'package:troyalunch/widgets/CardPaquete.dart';

class PaquetesPage extends StatelessWidget {
  const PaquetesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Paquetes'),
        backgroundColor: Colors.green,
      ),
      body: ListView(
        padding: EdgeInsets.all(20),
        children:<Widget> [
          cardPaquete(context, 0),
          SizedBox(height: 30.0,),
          cardPaquete(context, 1),
          SizedBox(height: 30.0,),
          cardPaquete(context, 2),
          SizedBox(height: 30.0,),
          cardPaquete(context, 3),
          SizedBox(height: 30.0,),
        ],
      ),
    );
  }
}