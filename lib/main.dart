import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sample_app/app_hello_world/HelloWorldAndroid.dart';
import 'package:sample_app/app_hello_world/HelloWorldAndroidWithState.dart';
import 'package:sample_app/app_hello_world/HelloWorldIos.dart';

void main() {

  runApp(new MaterialApp(
//    home: new HelloWorldIos(),
//    home: new HelloWorldAndroid(),
    home: new HelloWorldAndroidWithState(),
//    home: new HelloWorldNormal(),
  ));
}