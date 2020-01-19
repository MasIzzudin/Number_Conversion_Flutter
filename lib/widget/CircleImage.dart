import 'package:flutter/material.dart';

class CircleImage extends StatelessWidget {
  var img;
  double width;
  double height;

  CircleImage({this.img, this.width, this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(100),
        child: Image.asset(
          img,
          width: width,
          height: height,
          fit: BoxFit.scaleDown,
          repeat: ImageRepeat.repeat,
        ),
      ),
      decoration: BoxDecoration(boxShadow: <BoxShadow>[
        BoxShadow(
          color: Colors.black12,
          blurRadius: 50,
          offset: Offset(1.0, 5.0),
        ),
      ], borderRadius: BorderRadius.circular(100), color: Colors.white),
    );
  }
}
