import 'package:flutter/material.dart';

class EditarCuenta extends StatelessWidget {
  const EditarCuenta({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Editar Cuenta'),
        backgroundColor: Colors.green,
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(right: 10.0, top: 20.0, bottom: 20.0),
            child: CircleAvatar(
              radius: 60,
              child: Text('USER', style: TextStyle(color: Colors.green, fontSize: 30),),
              backgroundColor: Colors.black,
            ),
          ),
          SizedBox(height: 15,),
          ListTile(
            title: Text('Nombre', style: TextStyle(color: Colors.grey[600], fontSize: 16)),
            subtitle: Text('Nombre', style: TextStyle(color: Colors.black, fontSize: 20)),
            onTap: (){},
          ),
          SizedBox(height: 15,),
          ListTile(
            title: Text('Apellido', style: TextStyle(color: Colors.grey[600], fontSize: 16)),
            subtitle: Text('Usuario', style: TextStyle(color: Colors.black, fontSize: 20)),
            onTap: (){},
          ),
          SizedBox(height: 15,),
          ListTile(
            subtitle: Text('+52 442 000 0000', style: TextStyle(color: Colors.black, fontSize: 20)),
            title: Text('Número de teléfono', style: TextStyle(color: Colors.grey[600], fontSize: 16)),
            leading: Icon(Icons.call, color: Colors.green,),
            onTap: (){},
          ),
          SizedBox(height: 15,),
          ListTile(
            title: Text('Contraseña', style: TextStyle(color: Colors.grey[600], fontSize: 16)),
            subtitle: Text('*******', style: TextStyle(color: Colors.black, fontSize: 20)),
            onTap: (){},
          ),
        ],
      )
    );
  }
}