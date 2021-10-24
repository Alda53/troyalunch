import 'package:flutter/material.dart';

class MenuAbajo extends StatelessWidget {
  const MenuAbajo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      //showSelectedLabels: false,
      selectedItemColor: Colors.black,
      backgroundColor: Colors.green,
      unselectedItemColor: Colors.white,
      //currentIndex: 4,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Inicio'
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          label: 'Explorar'
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.shopping_bag_outlined),
          label: 'Pedidos'
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Cuenta'
        ),
      ],
    );
  }
}