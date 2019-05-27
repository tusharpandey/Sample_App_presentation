import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sample_app/views/FullScreenLoader.dart';

class HelloWorldAndroidWithState extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

    return new MaterialApp(
        home: new Scaffold(
      appBar: new AppBar(
        title: Text("Android Hello world"),
      ),
      body: HelloWorldContent(),
    ));
  }
}

class HelloWorldContent extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new HelloWorldContentState();
  }
}

class HelloWorldContentState extends State<HelloWorldContent> {
  bool showProgress = false;

  void clickButton() {
    setState(() {
      showProgress = true;
      startTimeout();
    });
  }

  startTimeout() async {
    var duration = const Duration(seconds: 3);
    return new Timer(duration, handleTimeout);
  }

  handleTimeout() {
    setState(() {
      showProgress = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    var button = RaisedButton(
      onPressed: clickButton,
      textColor: Colors.white,
      color: Colors.red,
      padding: const EdgeInsets.all(8.0),
      child: new Text(
        "Click",
      ),
    );

    var alignCenter = Align(
      alignment: Alignment.center,
      child: button,
    );

    var progress = FullScreenLoader();

    var showUi = showProgress ? progress : alignCenter;

    return Scaffold(
      body: showUi,
    );
  }
}
