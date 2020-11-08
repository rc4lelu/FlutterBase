import 'package:app/galleryPage.dart';
import 'package:app/homePage.dart';
import 'package:app/metoPage.dart';
import 'package:app/quizPage.dart';
import 'package:app/stfulDemo.dart';
import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      //Un seul objet
      child: ListView(
        //Plusieurs objets
        children: <Widget>[
          DrawerHeader(
              child: Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage("./images/c4.jpg"),
                  radius: 50,
                ),
              ),
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [
                        Colors.white, Colors.deepPurple, Colors.blue
                      ]
                  )
              )
          ),
          ListTile(
            title: Text("Home", style: TextStyle(fontSize: 22),),
            leading: Icon(Icons.home),
            trailing: Icon(Icons.arrow_right),
            onTap: (){
              Navigator.pop(context);
              Navigator.push(context,
                  MaterialPageRoute(
                      builder: (context) => new HomePage()
                  )
              );
            },
          ),
          Divider(color: Colors.deepPurple),
          ListTile(
            title: Text("Meteo", style: TextStyle(fontSize: 22),),
            leading: Icon(Icons.map),
            trailing: Icon(Icons.arrow_right),
            onTap: (){
              Navigator.pop(context);
              Navigator.push(context,
                  MaterialPageRoute(
                      builder: (context) => new MeteoPage()
                  )
              );
            },
          ),
          Divider(color: Colors.deepPurple),
          ListTile(
            title: Text("Gallery", style: TextStyle(fontSize: 22),),
            leading: Icon(Icons.camera),
            trailing: Icon(Icons.arrow_right),
            onTap: (){
              Navigator.pop(context);
              Navigator.push(context,
                  MaterialPageRoute(
                      builder: (context) => new GalleryPage()
                  )
              );
            },
          ),
          Divider(color: Colors.deepPurple),
          ListTile(
            title: Text("Quiz", style: TextStyle(fontSize: 22),),
            leading: Icon(Icons.add_comment_rounded),
            trailing: Icon(Icons.arrow_right),
            onTap: (){
              Navigator.pop(context);
              Navigator.push(context,
                  MaterialPageRoute(
                      builder: (context) => new QuizPage()
                  )
              );
            },
          ),
          Divider(color: Colors.deepPurple),
          ListTile(
            title: Text("Stful Demo", style: TextStyle(fontSize: 22),),
            leading: Icon(Icons.pending),
            trailing: Icon(Icons.arrow_right),
            onTap: (){
              Navigator.pop(context);
              Navigator.push(context,
                  MaterialPageRoute(
                      builder: (context) => new StfulDemo()
                 )
              );
            },
          ),
          Divider(color: Colors.deepPurple),
        ],
      ),
    );
  }
}
