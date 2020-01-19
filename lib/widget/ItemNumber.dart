import 'package:flutter/material.dart';

class ItemNumber extends StatefulWidget {
  var name;
  var value;
  EdgeInsetsGeometry margin;

  ItemNumber(this.name, {this.value = "0", this.margin = EdgeInsets.zero});

  @override
  _ItemNumberState createState() => _ItemNumberState();
}

class _ItemNumberState extends State<ItemNumber> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: widget.margin,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            constraints: BoxConstraints(minWidth: 40, maxWidth: 100),
            child: Text(
              widget.name,
              style: TextStyle(fontWeight: FontWeight.w700),
            ),
          ),
          Flexible(
            child: Text(
              widget.value.toString().toUpperCase(),
              overflow: TextOverflow.ellipsis,
              softWrap: true,
              style: TextStyle(
                fontWeight: FontWeight.w700,
              ),
              maxLines: 2,
            ),
          ),
        ],
      ),
    );
  }
}
