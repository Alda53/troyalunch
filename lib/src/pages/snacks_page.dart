import 'package:flutter/material.dart';
import 'package:troyalunch/widgets/snacks.dart';

class SnacksPage extends StatelessWidget {
  const SnacksPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Snacks'),
      ),
      body: Stack(
        children: [
          Snacks(),
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