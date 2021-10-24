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
          //bebida1(),
          SizedBox(height: 30.0,),
          bebida2(),
          SizedBox(height: 30.0,),
        ],
      ),
    );
  }


  Widget bebida2(){
    final card = Container(
      child: Column(
        children:<Widget>[
          FadeInImage(
            placeholder: AssetImage('assets/loading.gif'), //leer algo que esta en la app 
            image: NetworkImage('https://profucom.com.mx/wp-content/uploads/2019/04/travel-landscape-01.jpg'),
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            child: Text('Hola mundo'),
          ),
          ListTile(
            leading: Icon(Icons.photo_album, color: Colors.red),
            title: Text('Tirulo de la tarjeta'),
            subtitle: Text('Subtitulo'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children:<Widget>[
              TextButton(
                onPressed: (){}, 
                child: Text('OK'),
              ),
              TextButton(
                onPressed: (){}, 
                child: Text('Cancelar'),
              ),
            ],
          ),
        ],
      ),
    );

    return Container(
      child: ClipRRect(
        child: card,
        borderRadius: BorderRadius.circular(30.0)
      ),
      decoration: BoxDecoration(
        //color: Colors.red,
        borderRadius: BorderRadius.circular(30.0),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black26,
            blurRadius: 10.0,
            spreadRadius: 2.0,
            offset: Offset(2.0, 10.0),
          ),
        ]
      ),
    );
  }
}