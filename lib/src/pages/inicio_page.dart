import 'package:flutter/material.dart';
import 'package:troyalunch/widgets/bebidas.dart';
import 'package:troyalunch/widgets/paquetes.dart';
import 'package:troyalunch/widgets/platillos_page.dart';
import 'package:troyalunch/widgets/menu_abajo.dart';
import 'package:troyalunch/widgets/snacks.dart';

class InicioPage extends StatelessWidget {
  const InicioPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inicio'),
        backgroundColor: Colors.green,
      ),
      body: Column(
        children: [
          Expanded(
            child: Platillos(),
          ),
          Expanded(
            child: Bebidas(),
          ),
          Expanded(
            child: Snacks(),
          ),
          Expanded(
            child: Paquetes(),
          ),
        ]
      ),
    );
  }
}

