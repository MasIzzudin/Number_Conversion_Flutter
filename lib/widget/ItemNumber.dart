import 'package:flutter/material.dart';

class ItemNumber extends StatelessWidget {
  var name;
  var value;
  EdgeInsetsGeometry margin;

  ItemNumber(this.name, {this.value = 0, this.margin = EdgeInsets.zero});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      child: Row(
        children: <Widget>[
          Container(
            width: 25,
            child: Text(
              name,
              style: TextStyle(fontWeight: FontWeight.w700),
            ),
            margin: EdgeInsets.only(right: 16),
          ),
          Container(
            child: Text(value.toString(),
                style: TextStyle(fontWeight: FontWeight.w700)),
          ),
        ],
      ),
    );
  }
}
