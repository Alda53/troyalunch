import 'package:flutter/material.dart';
import 'package:troyalunch/widgets/CardPlatillo.dart';

class PlatillosPage extends StatelessWidget {
  const PlatillosPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Platillos'),
        backgroundColor: Colors.green,
      ),
      body: ListView(
        padding: EdgeInsets.all(20),
        children:<Widget> [
          CardPlatillo(context, 0),
          SizedBox(height: 30.0,),
          CardPlatillo(context, 1),
          SizedBox(height: 30.0,),
          CardPlatillo(context, 2),
          SizedBox(height: 30.0,),
          CardPlatillo(context, 3),
          SizedBox(height: 30.0,),
          CardPlatillo(context, 4),
          SizedBox(height: 30.0,),
        ],
      ),
    );
  }
}