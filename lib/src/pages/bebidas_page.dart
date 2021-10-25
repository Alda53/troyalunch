import 'package:flutter/material.dart';
import 'package:troyalunch/widgets/bebidas.dart';

class BebidasPage extends StatelessWidget {
  const BebidasPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bebidas'),
      ),
      body: Stack(
        children: [
          Bebidas(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        child: Icon(Icons.arrow_back),
        onPressed: (){
          Navigator.pop(context);
        },
      ),
    );
  }
}