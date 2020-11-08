import 'package:app/weatherDetail.dart';
import 'package:flutter/material.dart';

class MeteoPage extends StatefulWidget {
  @override
  _MeteoPageState createState() => _MeteoPageState();
}

class _MeteoPageState extends State<MeteoPage> {
  String city;
  TextEditingController textEditingController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Meteo page"),),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: TextField(
                controller: textEditingController,
                decoration: InputDecoration(hintText: ("Entrer une ville")),
                style: TextStyle(fontSize: 22),
                onChanged: (value){
                  setState(() {
                    this.city = value;
                  });
                },
                onSubmitted: (value) {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => WeatherDetail(city)));
                  textEditingController.text = "";
                },
              ),
            ),
          ),
          Container(
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: RaisedButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => WeatherDetail(city)));
                  textEditingController.text = "";
                },
                color: Colors.deepPurpleAccent,
                textColor: Colors.white,
                child: Text("Get weather", style: TextStyle(fontSize: 22),),
              ),
            ),
          )
        ],
    )
    );
  }
}
