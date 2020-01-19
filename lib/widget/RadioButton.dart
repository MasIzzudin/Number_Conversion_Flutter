import 'package:flutter/material.dart';

class RadioButton extends StatelessWidget {
  var groupValue;
  void Function(int) onChanged;
  var value;
  var name;

  RadioButton({
    @required this.value,
    @required this.name,
    @required this.groupValue,
    @required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Radio<int>(value: value, groupValue: groupValue, onChanged: onChanged),
        Text(
          name,
          style: TextStyle(fontWeight: FontWeight.w700),
        )
      ],
    );
  }
}
