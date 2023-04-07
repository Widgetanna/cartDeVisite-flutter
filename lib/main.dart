import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(11, 124, 181, 1),
          title: Text('Carte de visite'),
        ),
        backgroundColor:  Color.fromRGBO(114, 164, 189, 1),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
               SizedBox(height: 120.0), 
          CircleAvatar(
            radius: 70.0,
            backgroundColor: Colors.transparent,
            child: ClipOval(
              child: Image.asset(
                'images/portretCV.png',
                fit: BoxFit.fill,
                // Ajuste l'image pour couvrir tout l'espace
                width: 140.0, // Largeur de l'image
                height: 140.0, // Hauteur de l'image
              ),
            ),
          ),
          Text(
            'Lilianna Guderska',
            style: TextStyle(
              fontFamily: 'Pacifico',
              color: Colors.white,
              fontSize: 35.0,
            ),
          ),
          SizedBox(
            height: 20.0,
            width: 300.0,
            child: Divider(
              color: Colors.white,
              thickness: 1.0, 
              ),
            ),
          Text(
            'Developpeuse web',
            style: TextStyle(
              fontFamily: 'Roboto',
              fontSize: 24.0,
              color: Color.fromARGB(255, 3, 6, 19),
            ),
          ),

          Card(
            color: Colors.white,
            margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
           child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: <Widget>[
                  Icon(
                    Icons.phone_iphone,
                    size: 30.0,
                    color: Color.fromRGBO(11, 124, 181, 1),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    '+336 88 84 64 92',
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                  ),
                  
                ],
              ),
            ),
          ),
          Card(
            color: Colors.white,
            margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
            child: ListTile(
              leading: Icon(
                  Icons.email,
                  size: 30.0,
                  color: Color.fromRGBO(11, 124, 181, 1),
                ),
              title: Text(
                  'lilianna.guderska@renault.com',
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,),
              ),
              )
          )
        ])),
      ),
    );
  }
}
