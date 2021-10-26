import 'package:flutter/material.dart';

class CarritoPage extends StatelessWidget {
  const CarritoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tus pedidos'),
        centerTitle: true,
        backgroundColor: Colors.green,
        automaticallyImplyLeading: false,
      ),
    );
  }
}