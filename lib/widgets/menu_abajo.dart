import 'package:flutter/material.dart';
import 'package:troyalunch/src/pages/cuenta_page.dart';
import 'package:troyalunch/src/pages/inicio_page.dart';
import 'package:troyalunch/src/pages/menu_page.dart';

class MenuAbajo extends StatefulWidget {
  MenuAbajo({Key? key}) : super(key: key);

  @override
  _MenuAbajoState createState() => _MenuAbajoState();
}

class _MenuAbajoState extends State<MenuAbajo> {
  int selectedPage = 0;

  final _pageOptions = [
    InicioPage(),
    MenuPage(),
    CuentaPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pageOptions[selectedPage],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.green,
        unselectedItemColor: Colors.white,
        selectedItemColor: Colors.black,
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
            icon: Icon(Icons.add_shopping_cart),
            label: 'Pedidos'
          ),
        ],    
        currentIndex: selectedPage,
          onTap: (index){
            setState(() {
              selectedPage = index;
            });
          },  
      ),
    );
  }
} 
