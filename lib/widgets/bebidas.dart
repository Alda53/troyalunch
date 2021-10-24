import 'package:flutter/material.dart';

class Bebidas extends StatelessWidget {
  const Bebidas({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*appBar: AppBar(
        title: Text('Bebidas'),
      ),*/
      body: ListView(
        padding: EdgeInsets.all(20),
        children:<Widget> [
          bebida1(),
          SizedBox(height: 30.0,),
          //bebida2(),
          SizedBox(height: 30.0,),
        ],
      ),
    );
  }


  Widget bebida1(){
    return Card(
      child: Column(
        children:<Widget>[
          ListTile(
            title: Text('Coca cola', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
            tileColor: Colors.green,
          ),
          FadeInImage(
            placeholder: NetworkImage('https://cdn.dribbble.com/users/1215152/screenshots/12858414/media/2899b4a569a01cdb3614b65e7f250092.gif'), 
            image: AssetImage('assets/bebida1.jpg'),
            height: 200,
          ),
          Container(
            padding: EdgeInsets.all(10.0),
          ),
          Row(
            children: [
              Text('\$20', textAlign: TextAlign.right,),
              Text('  Calificacion: '),
              Icon(Icons.star, size: 20, color:Colors.green),
              Icon(Icons.star, size: 20, color:Colors.green),
              Icon(Icons.star, size: 20, color:Colors.green),
              Icon(Icons.star, size: 20, color:Colors.green),
            ],
          ),
        ],
      ),
    );
  }
}