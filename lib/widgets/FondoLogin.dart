import 'package:flutter/material.dart';

class FondoLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      //Tomamos todo el tamaño de la pantalla para la imagen
      height: double.infinity,
      width: double.infinity,
      child: Image(image: AssetImage('assets/fondo_login.jpg')),
    );
  }
}