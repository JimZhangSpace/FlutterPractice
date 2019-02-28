import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_app/homepage.dart';
import 'package:flutter_app/login.dart';

class NavigatorTest extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => _Navigator();

}

class _Navigator extends State<NavigatorTest> {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Container(
      decoration: new BoxDecoration(color: Colors.white
      ),
      child: new Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              onPressed: homepage,
              child: const Text('HomePage'),
            ),
            RaisedButton(
              onPressed:login ,
              child: const Text('Login'),
            )
          ]
      ),
    );
  }

  void homepage() {
    Navigator.push(context,
        new MaterialPageRoute(
            builder: (context) => new MyHomePage(title: 'HomePage'))
    );
  }


  void login() {
    Navigator.push(context,
        new MaterialPageRoute(
            builder: (context)=>new Login())
    );
  }

}