import 'package:flutter/material.dart';
import 'package:troyalunch/src/pages/Login_page.dart';
import 'package:troyalunch/src/pages/Signin_page.dart';

class TarjetaLogin extends StatelessWidget {
  const TarjetaLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          //Positioned ayuda a tener más de un elemento
          bottom: 0,
          child: Container(
            //Container que es la parte blanca inferior
            width: 415,
            height: 150,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "Usa tu cuenta para ingresar",
                  style: TextStyle(fontSize: 20),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginPage()),
                    );
                  },
                  child: Text(
                    //Botón que nos manda al login
                    "Ya tengo cuenta",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.green)),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SigninPage()),
                    );
                  },
                  child: Text(
                    //Botón que nos manda al signin 
                    "Crear cuenta",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.green)),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          top: 30,
          left: 150,
          child: Container(
            width: 100,
            height: 100,
            color: Colors.green,
            //PONER AQUÍ EL LOGO EN CASO DE TENERLO
          ),
        ),
      ],
    );
  }
}
