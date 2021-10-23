import 'package:flutter/material.dart';
import 'package:troyalunch/src/pages/primera_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pantalla Login'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Regresa a primera page'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const PrimeraPage()),
            );
          },
        ),
      ),
    );
  }
}