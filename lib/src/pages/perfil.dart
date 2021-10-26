import 'package:flutter/material.dart';
import 'package:troyalunch/src/pages/cuenta_page.dart';


class Perfil extends StatelessWidget {
  const Perfil({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CuentaPage(),
        Drawer(
          child: ListView(
            children: [
              ElevatedButton(onPressed: (){
                Navigator.pop(context);
              }, 
              child: Icon(Icons.close, color: Colors.white,),
              style: ElevatedButton.styleFrom(
                primary: Colors.green, 
                onPrimary: Colors.red,
                alignment: Alignment.bottomRight),
              ),

              UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.grey[800]
                ) ,
                accountName: Text('Nombre Usuario'), 
                accountEmail: Text('correo@gmail.com'),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Colors.black,
                  child: Text('USER', style: TextStyle(color: Colors.green),),
                ),
              ),
              ListTile(
                title: Text('Editar la cuenta'),
                leading: Icon(Icons.edit),
                trailing: Icon(Icons.arrow_right),
                onTap: (){
                  Navigator.pushNamed(context, 'editar_cuenta');
                },
              ),
              ListTile(
                title: Text('Otras ocpiones'),
                leading: Icon(Icons.more),
                trailing: Icon(Icons.arrow_right),
                onTap: (){},
              ),
              ListTile(
                title: Text('Cerrar sesión'),
                leading: Icon(Icons.person_off),
                trailing: Icon(Icons.arrow_right),
                onTap: (){
                  Navigator.pushNamed(context, 'primera_page');
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}
    