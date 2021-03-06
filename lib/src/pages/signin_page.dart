import 'package:flutter/material.dart';
import 'package:troyalunch/src/pages/signin2_page.dart';

class SigninPage extends StatelessWidget {
  const SigninPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Crea una cuenta'),
          backgroundColor: Colors.green,
        ),
        floatingActionButton: TextButton.icon(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const SigSignin()),
            );
          },
          label: Icon(
            Icons.arrow_forward_rounded,
            color: Colors.white,
          ),
          icon: Text(
            "Siguiente",
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.black),
          ),
        ),
        body: Container(
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
                    Icons.add_ic_call,
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
              padding: const EdgeInsets.all(20.0),
              child: Text(
                "Si continúas, recibirás un SMS para confirmar tu número celular.",
                style: TextStyle(fontSize: 15, color: Colors.black45),
              ),
            ),
          ],
        )
      )
    );
  }
}
