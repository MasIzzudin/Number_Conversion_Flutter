import 'package:flutter/material.dart';

class TextName extends StatelessWidget {
  var name;

  TextName(this.name);

  @override
  Widget build(BuildContext context) {
    return Text(
      name,
      style: TextStyle(fontSize: 25, color: Colors.blueAccent),
    );
  }
}
