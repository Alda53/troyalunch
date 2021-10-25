import 'package:flutter/material.dart';
import 'package:troyalunch/widgets/platillos_page.dart';

class PlatillosPage extends StatelessWidget {
  const PlatillosPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Platillos'),
      ),
      body: Stack(
        children: [
          Platillos(),
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