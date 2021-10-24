import 'package:flutter/material.dart';

class Platillos extends StatelessWidget {
  const Platillos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*appBar: AppBar(
        title: Text('Platillos'),
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
            title: Text('Coca cola', style: TextStyle(
              color: Colors.white, 
              fontWeight: FontWeight.bold, 
              fontSize: 18),),
            tileColor: Colors.green,
          ),
          SizedBox(height:10.0),
          Container(
            padding: EdgeInsets.all(10.0),
            height: 140.0,
            width: 170.0,
            decoration: new BoxDecoration(
              image: DecorationImage(
                image: new AssetImage('assets/bebida1.jpg'),
                fit: BoxFit.fill,
              ),
            ),
          ),
          SizedBox(height:10.0),
          Row(
            children: [
              Text('\$20.00', textAlign: TextAlign.right, style: TextStyle(fontSize: 16)),
              Text('  Calificacion: ', style: TextStyle(fontSize: 16),),
              Icon(Icons.star, size: 22, color:Colors.green),
              Icon(Icons.star, size: 22, color:Colors.green),
              Icon(Icons.star, size: 22, color:Colors.green),
              Icon(Icons.star, size: 22, color:Colors.green),
            ],
          ),
          SizedBox(height:10.0),
        ],
      ),
    );
  }
}