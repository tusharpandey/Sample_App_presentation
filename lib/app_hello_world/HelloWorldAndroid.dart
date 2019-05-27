import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HelloWorldAndroid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    TextStyle style = new TextStyle(
      inherit: true,
      color: Colors.black,
      fontSize: 38.0,
    );

    var child = Text(
      "Android app",
      style: style,
      textAlign: TextAlign.center,
    );

    var alignCenter = Align(
      alignment: Alignment.center,
      child: child,
    );

    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

    return new MaterialApp(
        home: new Scaffold(
      appBar: new AppBar(
        title: Text("Android Hello world"),
      ),
      body: alignCenter,
    ));
  }
}