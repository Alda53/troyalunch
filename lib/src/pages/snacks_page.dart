import 'package:flutter/material.dart';
import 'package:troyalunch/widgets/CardSnack.dart';

class SnacksPage extends StatelessWidget {
  const SnacksPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Snacks'),
        backgroundColor: Colors.green,
      ),
      body: ListView(
        padding: EdgeInsets.all(20),
        children:<Widget> [
          cardSnack(context, 0),
          SizedBox(height: 30.0,),
          cardSnack(context, 1),
          SizedBox(height: 30.0,),
          cardSnack(context, 2),
          SizedBox(height: 30.0,),
          cardSnack(context, 3),
          SizedBox(height: 30.0,),
          cardSnack(context, 4),
          SizedBox(height: 30.0,),
        ],
      ),
    );
  }
}