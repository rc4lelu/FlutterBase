import 'package:flutter/material.dart';
import 'package:app/galleryDataPage.dart';

class GalleryPage extends StatefulWidget {
  @override
  _GalleryPageState createState() => _GalleryPageState();
}

class _GalleryPageState extends State<GalleryPage> {
  String keyWord;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Gallery page"),),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(child: TextField(
              style: TextStyle(fontSize: 22),
              onChanged: (value) {
                setState(() {
                  this.keyWord = value;
                });
              },
            )),
          ),
          Container( width: double.infinity, child: RaisedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => GalleryDataPage(keyWord)));
            },
            color: Colors.deepPurpleAccent,
            padding: EdgeInsets.all(10),
            child: Text("Get image", style: TextStyle(fontSize: 22, color: Colors.white),),
          ))
        ],
      )
    );
  }
}
