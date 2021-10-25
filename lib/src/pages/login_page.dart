import 'package:flutter/material.dart';
import 'package:troyalunch/widgets/menu_abajo.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Inicia sesión'),
          backgroundColor: Colors.green,
        ),
        floatingActionButton: TextButton.icon(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MenuAbajo()),
            );
          },
          label: Icon(
            Icons.arrow_forward_rounded,
            color: Colors.white,
          ),
          icon: Text(
            "TroyaLUNCH",
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.black),
          ),
        ),
        body: SingleChildScrollView(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                "Ingresa tu número celular",
                style: TextStyle(fontSize: 20),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                keyboardType: TextInputType.number,
                decoration: new InputDecoration(
                  icon: new Icon(
                    Icons.local_phone,
                    color: Colors.green,
                  ),
                  enabledBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    borderSide: const BorderSide(
                      color: Colors.grey,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    borderSide: BorderSide(color: Colors.green),
                  ),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(30.0),
              child: Text(
                "Ingresa tu contraseña",
                style: TextStyle(fontSize: 20),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                obscureText: true,
                decoration: new InputDecoration(
                  labelText: "Escribe tu contraseña",
                  labelStyle: TextStyle(color: Colors.green),
                  icon: new Icon(
                    Icons.lock,
                    color: Colors.green,
                  ),
                  enabledBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    borderSide: const BorderSide(
                      color: Colors.grey,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    borderSide: BorderSide(color: Colors.green),
                  ),
                ),
              ),
            ),
          ],
        )
      )
    );
  }
}
