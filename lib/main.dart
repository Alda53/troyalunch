import 'package:flutter/material.dart';
import 'package:troyalunch/src/routes/routes.dart';

void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'cover_page',
      routes: getRoutes(),
    );
  }
}
