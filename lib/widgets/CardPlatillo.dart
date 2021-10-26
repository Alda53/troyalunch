import 'package:flutter/material.dart';
import 'package:troyalunch/src/data/platillos_data.dart';

Widget cardPlatillo(BuildContext context, int index) {
  return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
    Stack(
      children: [
        GestureDetector(
          child: Container(
            width: double.infinity,
            height: 160,
            child: FadeInImage(
              placeholder: AssetImage('assets/loading.gif'),
              image: NetworkImage(platillo[index]['img']),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    ),
    SizedBox(
      height: 15,
    ),
    Text(
      platillo[index]['nombre'],
      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
    ),
    SizedBox(
      height: 8,
    ),
    SizedBox(
      height: 8,
    ),
    Row(
      children: [
        Text(
          platillo[index]['desc'],
          style: TextStyle(
            fontSize: 14,
            color: Colors.black38,
          ),
        ),
      ],
    ),
    SizedBox(
      height: 8,
    ),
    Row(
      children: [
        Container(
          decoration: BoxDecoration(
              color: Colors.black12, borderRadius: BorderRadius.circular(3)),
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Icon(
              Icons.access_time,
              color: Colors.green,
              size: 16,
            ),
          ),
        ),
        SizedBox(
          width: 8,
        ),
        Container(
          decoration: BoxDecoration(
              color: Colors.black12, borderRadius: BorderRadius.circular(3)),
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Text(
              platillo[index]['tiempo'],
              style: TextStyle(
                fontSize: 14,
              ),
            ),
          ),
        ),
        SizedBox(
          width: 8,
        ),
        Container(
          decoration: BoxDecoration(
              color: Colors.black12, borderRadius: BorderRadius.circular(3)),
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Text(
              platillo[index]['precio'],
              style: TextStyle(
                fontSize: 14,
              ),
            ),
          ),
        ),
        SizedBox(
          width: 8,
        ),
        Container(
          decoration: BoxDecoration(
              color: Colors.black12, borderRadius: BorderRadius.circular(3)),
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Icon(
              Icons.grade,
              color: Colors.yellow,
              size: 16,
            ),
          ),
        ),
        SizedBox(
          width: 8,
        ),
        Container(
          decoration: BoxDecoration(
              color: Colors.black12, borderRadius: BorderRadius.circular(3)),
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Text(
              platillo[index]['calif'],
              style: TextStyle(
                fontSize: 14,
              ),
            ),
          ),
        ),
        SizedBox(
          width: 25,
        ),
        InkWell(
          onTap: () => mostrarAlerta(context, index),
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Icon(
              Icons.add_shopping_cart,
              color: Colors.green,
              size: 30,
            ),
          ),
        ),
      ],
    )
  ]);
}

mostrarAlerta(BuildContext context, int index){
    showDialog(
      context: context, 
      builder: (context){
        return AlertDialog(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
          title: Text('¿Agregar al carrito?'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text(platillo[index]['nombre']),
              Text(""),
              Text("Total: " + platillo[index]['precio']),
            ],
          ),
          actions: <Widget>[
            TextButton(
              onPressed: ()=> Navigator.of(context).pop(), 
              child: Text('Cancelar', style: TextStyle(color: Colors.red),),
            ),
            TextButton(
              onPressed: ()=> confirmacion(context, index), 
              child: Text('Confirmar', style: TextStyle(color: Colors.green)),
            ),
          ],
        );
      },
    barrierDismissible: false,
  );
}

confirmacion(BuildContext context, int index){
    showDialog(
      context: context, 
      builder: (context){
        return AlertDialog(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
          title: Text('¡Gracias por tu orden!'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text("Recoge tu " + platillo[index]['nombre'] + " en un tiempo aproximado de " + platillo[index]['tiempo']),
            ],
          ),
          actions: <Widget>[
            TextButton(
              onPressed: ()=> Navigator.of(context).pop(), 
              child: Text('Ok', style: TextStyle(color: Colors.green)),
            ),
          ],
        );
      },
    barrierDismissible: false,
  );
}