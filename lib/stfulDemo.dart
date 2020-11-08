import 'package:flutter/material.dart';
import 'dart:math';

class StfulDemo extends StatefulWidget {
  @override
  _StfulDemoState createState() => _StfulDemoState();
}

class _StfulDemoState extends State<StfulDemo> {
  int counter = 0;
  int rndValue = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Home page"),),
        body: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Text("Counter value ${counter}, Random Value ${rndValue}",
                  style: TextStyle(fontSize: 18),),
              ),
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(8),
              child: RaisedButton(
                child: Text("Incrementer", style: TextStyle(color: Colors.white),),
                color: Colors.deepPurpleAccent,
                onPressed: () => setState(() {
                  counter++;
                  rndValue = new Random().nextInt(1000);
                }),
              ),
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(8),
              child: RaisedButton(
                child: Text("Decrementer", style: TextStyle(color: Colors.white),),
                color: Colors.deepPurpleAccent,
                onPressed: () => setState(() => --counter),
              ),
            )
          ],
        )
    );
  }
}
