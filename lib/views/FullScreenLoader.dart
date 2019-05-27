import 'package:flutter/material.dart';

class FullScreenLoader extends StatefulWidget {
  FullScreenLoader();

  @override
  FullScreenLoaderState createState() {
    return new FullScreenLoaderState();
  }
}

class FullScreenLoaderState extends State<FullScreenLoader> {
  FullScreenLoaderState();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: new Container(
          color: Color(0x88000000),
          width: double.maxFinite,
          height: double.maxFinite,
          child: new Center(child: new CircularProgressIndicator()),
        ));
  }
}
