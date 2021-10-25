import 'package:flutter/material.dart';
import 'package:troyalunch/widgets/Paquetes.dart';

class PaquetesPage extends StatelessWidget {
  const PaquetesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Paquetes'),
      ),
      body: Stack(
        children: [
          Paquetes(),
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