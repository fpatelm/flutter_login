import 'package:flutter/material.dart';

class LoginPhone extends StatefulWidget {
  LoginPhone({Key key}) : super(key: key);

  @override
  _LoginPhoneState createState() => _LoginPhoneState();
}

class _LoginPhoneState extends State<LoginPhone> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
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
            top: 90,
            left: 20,
            right: 20,
            child: Container(
              height: 150,
              width: 20,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        "http://aux.iconspalace.com/uploads/12051769021260249282.png"),
                    fit: BoxFit.contain),
              ),
            ),
          ),
          Positioned(
            child: AppBar(
              iconTheme: IconThemeData(color: Colors.black87),
              title: Text('Login with Phone Number', style: TextStyle(color: Colors.black87),),
              backgroundColor: Colors.transparent,
              elevation: 0,
            ),
          ),
          Positioned(
            top: 280,
            left: 10,
            right: 10,
            child: Column(
              children: <Widget>[],
            ),
          ),
        ],
      ),
    );
  }
}
