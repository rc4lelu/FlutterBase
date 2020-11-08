import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class GalleryDataPage extends StatefulWidget {
  String keyWord;
  GalleryDataPage(this.keyWord);
  @override
  _GalleryDataPageState createState() => _GalleryDataPageState();
}

class _GalleryDataPageState extends State<GalleryDataPage> {
  int currentPage = 1;
  int size = 5;
  List<dynamic> hits;
  var galleryData;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    this.getData;
  }

  getData(){
    String url = "https://pixabay.com/api/?key=12387558-21862bdb1ab194dfe9c14f807&q=${widget.keyWord}&page=${currentPage}&per_page=${size}";
    http.get(url).then((resp) {
      setState(() {
        galleryData = json.decode(resp.body);
        hits = galleryData['hits'];
        print(hits);
      });
    }).catchError((err) {
      print(err);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Images of ${widget.keyWord}"),),
      body: (galleryData == null ? CircularProgressIndicator() :
          ListView.builder(
            itemCount: (galleryData == null ? 0 : hits.length),
            itemBuilder: (context, index) {
              return Column(
                children: <Widget>[
                  Card(
                    child: Text(hits[index]['tags'], style: TextStyle(fontSize: 22, color: Colors.white),),
                    color: Colors.deepPurpleAccent,
                  )
                ],
              );
            },
          )
      )

    );
  }
}
