import 'package:flutter/material.dart';
import 'package:flutter_social_button/flutter_social_button.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final String _urlGit = 'https://github.com/Widgetanna?tab=repositories';
  final String _urlFace = 'https://www.facebook.com/public/Lilianna-Guderska';

  Future<void> _launchUrl(String url) async {
    // Convertir la chaîne de caractères `url` en un objet Uri
    Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      // Ouvre le lien
      await launchUrl(uri);
    } else {
      throw Exception('Could not launch $url');
    }
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(11, 124, 181, 1),
          title: Text('Carte de visite'),
        ),
        backgroundColor: Color.fromRGBO(114, 164, 189, 1),
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
                    width: 140.0,
                    height: 140.0,
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
              Text(
                'WIDGETANNA',
                style: TextStyle(
                  fontFamily: 'Roboto',
                  color: Colors.white,
                  fontSize: 28.0,
                  fontWeight: FontWeight.w100,
                ),
              ),
              SizedBox(
                height: 35.0,
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
              SizedBox(
                height: 8.0,
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
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  FlutterSocialButton(
                    onTap: () {
                      _launchUrl(_urlGit);
                    },
                    buttonType: ButtonType.github,
                    mini: true,
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  FlutterSocialButton(
                    onTap: () {
                      _launchUrl(_urlFace);
                    },
                    buttonType: ButtonType.facebook,
                    mini: true,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
