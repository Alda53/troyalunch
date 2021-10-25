import 'package:flutter/material.dart';
import 'package:troyalunch/widgets/FondoLogin.dart';
import 'package:troyalunch/widgets/TarjetaLogin.dart';

class PrimeraPage extends StatelessWidget {
  const PrimeraPage({Key? key}) : super(key: key);

  @override
    Widget build(BuildContext context) {
    return Scaffold(
      //Usamos stack para poder tener los objetos "encimados"
      body: Stack(
        children: [
          FondoLogin(),
          TarjetaLogin(),
        ],
      ),
    );
  }
}