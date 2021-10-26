import 'package:flutter/material.dart';
import 'package:troyalunch/src/utils/icono_utils.dart';

class CuentaPage extends StatelessWidget {
  const CuentaPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cuenta'),
        centerTitle: true,
        backgroundColor: Colors.green,
        automaticallyImplyLeading: false,        
      ),
      body: Column(
        children: [
          ListTile(
            leading: getIcon('favorite'),
            title: Text('Tus favoritos'),
            trailing: Icon(Icons.arrow_right),
            onTap: (){},
          ),
          Divider(),
          ListTile(
            leading: getIcon('gift'),
            title: Text('Recompensas'),
            trailing: Icon(Icons.arrow_right),
            onTap: (){},
          ),
          Divider(),
          ListTile(
            leading:getIcon('card'),
            title: Text('Pago'),
            trailing: Icon(Icons.arrow_right),
            onTap: (){},
          ),
          Divider(),
          ListTile(
            leading: getIcon('help'),
            title: Text('Ayuda'),
            trailing: Icon(Icons.arrow_right),
            onTap: (){},
          ),
          Divider(),
          ListTile(
            leading: getIcon('settings'),
            title: Text('Configuración'),
            trailing: Icon(Icons.arrow_right),
            onTap: (){
              Navigator.pushNamed(context, 'perfil');
            },
          )
        ],
      ),
    );
  }
}