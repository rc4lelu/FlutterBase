import 'package:app/mainDrawer.dart';
import 'package:flutter/material.dart';

void main() => runApp(
  MaterialApp(
    home: MyApp(),
    theme: ThemeData(
      appBarTheme: AppBarTheme(
        color: Colors.deepPurple
      )
    ),
  )
);

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Menu
      drawer: MainDrawer(),
      //En tete
      appBar: AppBar(
        title: Text("My home page")
      ),
      //corps
      body: Center(
        child: Text("Nelly va dormir", style: TextStyle(
          color: Colors.deepPurple, fontSize: 23
        ),),
      ),
    );
  }
}
