import 'package:flutter/material.dart';
import 'package:troyalunch/src/routes/routes.dart';

void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Widgets componentes basicos',
      initialRoute: 'primera_page',
      routes: getRoutes(),
      /*onGenerateRoute: (settings){
        return MaterialPageRoute(
          builder: (BuildContext context) => AlertPage()
        );
      },*/
    );
  }
}
