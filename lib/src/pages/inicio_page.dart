import 'package:flutter/material.dart';
import 'package:troyalunch/src/pages/bebidas.dart';
import 'package:troyalunch/src/pages/platillos_page.dart';
import 'package:troyalunch/widgets/menu_abajo.dart';

class InicioPage extends StatelessWidget {
  const InicioPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TroyaLUNCH'),
        backgroundColor: Colors.green,
      ),
      body: Column(
        children: [
          Expanded(
            child: Platillos(),
          ),
          SizedBox(height: 30.0,),
          Expanded(
            child: Bebidas(),
          ),
        ]
      ),
      bottomNavigationBar: MenuAbajo(),
    );
  }
}

