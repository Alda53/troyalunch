import 'package:flutter/material.dart';
import 'package:troyalunch/src/providers/menu_provider.dart';
import 'package:troyalunch/src/utils/icono_utils.dart';


class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page')
      ),
      body: _lista(),
    );
  }

  Widget _lista(){
   
    return FutureBuilder(
      future: menuProvider.cargarData(),
      initialData: [],
      builder: (BuildContext context, AsyncSnapshot snapshot){
        return ListView(
          children: _listaItems(snapshot.data, context),
        );
      }
    );

  }

  List<Widget> _listaItems(List<dynamic>?data, BuildContext context){
    final List<Widget> opciones = [];

    data?.forEach((op) { 
      final widgetTemporal = ListTile(
        title: Text(op['texto']),
        leading: getIcon(op['icon']),
        trailing: Icon(Icons.add_business_outlined, color: Colors.black,),
        onTap: () {
          Navigator.pushNamed(context, op['ruta']);
        },
      );
      opciones..add(widgetTemporal)
              ..add(Divider());
    });

    return opciones;
  }
}