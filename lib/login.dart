import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:login/phoneLogin.dart';

class Login extends StatefulWidget {
  final String title;

  Login({Key key, this.title}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    'https://i.pinimg.com/originals/d1/ef/57/d1ef57b16c7e827086a4b5473a309575.jpg'),
                fit: BoxFit.cover),
          ),
        ),
        Positioned(
          top: 60,
          left: 20,
          right: 20,
          child: Container(
            height: 200,
            width: 50,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      "https://codecollege.co.za/wp-content/uploads/2016/12/kisspng-dart-programming-language-flutter-object-oriented-flutter-logo-5b454ed3d65b91.767530171531268819878.png"),
                  fit: BoxFit.cover),
            ),
          ),
        ),
        Positioned(
          top: 280,
          left: 10,
          right: 10,
          child: Column(
            children: <Widget>[
              FacebookBtn(),
              Divider(
                height: 20,
              ),
              PhoneBtn(),
            ],
          ),
        ),
      ],
    );
  }
}

class FacebookBtn extends StatelessWidget {
  const FacebookBtn({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50.0,
      child: RaisedButton(
        onPressed: () {},
        color: HexColor("#3B5998"),
        elevation: 10,
        textColor: Colors.white,
        child: Row(
          children: <Widget>[
            Icon(
              FontAwesomeIcons.facebookF,
              color: Colors.white,
            ),
            SizedBox(
              width: 35,
            ),
            Text('Login with Facebok', style: TextStyle(fontSize: 20)),
          ],
        ),
      ),
    );
  }
}

class PhoneBtn extends StatelessWidget {
  const PhoneBtn({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50.0,
      child: RaisedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => LoginPhone()),
          );
        },
        color: Colors.teal,
        elevation: 10,
        textColor: Colors.white,
        child: Row(
          children: <Widget>[
            Icon(
              FontAwesomeIcons.phone,
              color: Colors.white,
            ),
            SizedBox(
              width: 20,
            ),
            Text('Login with Phone Number', style: TextStyle(fontSize: 20)),
          ],
        ),
      ),
    );
  }
}

class HexColor extends Color {
  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF" + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }

  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}
