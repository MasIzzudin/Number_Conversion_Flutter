import 'package:flutter/material.dart';
import 'package:project_uas/Home.dart';
import 'package:project_uas/Profile.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(routes: {
      Home.routeName: (ctx) => Home(),
      Profile.routeName: (ctx) => Profile(),
    }, home: Home());
  }
}
