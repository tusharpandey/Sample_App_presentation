import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HelloWorldNormal extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

    return HelloWorldContent();
  }
}

class HelloWorldContent extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new HelloWorldContentState();
  }
}

class HelloWorldContentState extends State<HelloWorldContent>{
  @override
  Widget build(BuildContext context) {
    return new Text("Hello World");
  }
}
