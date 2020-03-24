import 'package:flutter/material.dart';
import 'dart:async';


class LoadingPage extends StatefulWidget {

  @override
  _LoadingPageState createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    var duration = new Duration(seconds: 3);
    new Future.delayed(duration, goToHome);
  }

  void goToHome() {
    // Navigator.of(context).pushReplacementNamed("home");
    Navigator.of(context).pushNamedAndRemoveUntil("home", ModalRoute.withName("home"));
  }

  @override
  Widget build(BuildContext context) {
    return new Stack(
      alignment: Alignment.center,
      children: <Widget>[
        new Container(
          color: Colors.black,
          child: new Image.asset(
            "images/wechat_loading.jpeg",
            fit: BoxFit.cover,
          ),
        )
      ],
    );
  }
}
