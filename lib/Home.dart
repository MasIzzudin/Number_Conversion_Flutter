import 'package:flutter/material.dart';
import 'package:project_uas/Profile.dart';
import 'package:project_uas/widget/ItemNumber.dart';
import 'package:project_uas/widget/RadioButton.dart';

class Home extends StatefulWidget {
  static const routeName = "/home";

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var ctrlBil = TextEditingController(text: "0");

  var hex = -1;
  var dec = 1;
  var oct = -1;
  var bin = -1;

  var hexValue = "0";
  num decValue = 0;
  num octValue = 0;
  num binValue = 0;

  @override
  void initState() {
    ctrlBil.addListener(() {
      if (ctrlBil.text.length > 0) {
        setState(() {
          if (hex == 0) {
            convertHex();
          } else if (dec == 1) {
            convertDec();
          } else if (oct == 2) {
            convertOct();
          } else if (bin == 3) {
            convertBin();
          }
        });
      }
    });
    super.initState();
  }

  @override
  void dispose() {
    ctrlBil.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Number Conversion"),
        leading: Icon(
          Icons.adb,
          color: Colors.white,
        ),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.person),
              onPressed: () => Navigator.pushNamed(context, Profile.routeName))
        ],
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: FractionalOffset.topLeft,
                end: FractionalOffset.bottomRight,
                colors: [Color(0xff0096ff), Color(0xff6610f2)]),
            image: DecorationImage(
              image: AssetImage("assets/images/pattern6.png"),
              fit: BoxFit.none,
              repeat: ImageRepeat.repeat,
            ),
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          children: <Widget>[
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Expanded(
                  child: TextField(
                    controller: ctrlBil,
                    //maxLength: 19,
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(labelText: "Enter your number"),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            ItemNumber(
              "Hex",
              value: hexValue,
            ),
            ItemNumber(
              "Dec",
              margin: EdgeInsets.only(top: 5),
              value: decValue,
            ),
            ItemNumber(
              "Oct",
              margin: EdgeInsets.only(top: 5),
              value: octValue,
            ),
            ItemNumber(
              "Bin",
              margin: EdgeInsets.only(top: 5),
              value: binValue,
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              height: 1,
              color: Colors.black45,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                RadioButton(
                  value: 0,
                  name: "Hex",
                  groupValue: hex,
                  onChanged: handleHex,
                ),
                RadioButton(
                  value: 1,
                  name: "Dec",
                  groupValue: dec,
                  onChanged: handleDec,
                ),
                RadioButton(
                  value: 2,
                  name: "Oct",
                  groupValue: oct,
                  onChanged: handleOct,
                ),
                RadioButton(
                  value: 3,
                  name: "Bin",
                  groupValue: bin,
                  onChanged: handleBin,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  void handleHex(int value) {
    setState(() {
      hex = value;
      dec = -1;
      oct = -1;
      bin = -1;
      ctrlBil.text = hexValue.toString();
    });
  }

  void handleDec(int value) {
    setState(() {
      dec = value;
      hex = -1;
      oct = -1;
      bin = -1;
      ctrlBil.text = decValue.toString();
    });
  }

  void handleOct(int value) {
    setState(() {
      oct = value;
      hex = -1;
      dec = -1;
      bin = -1;
      ctrlBil.text = octValue.toString();
    });
  }

  void handleBin(int value) {
    setState(() {
      bin = value;
      hex = -1;
      dec = -1;
      oct = -1;
      ctrlBil.text = binValue.toString();
    });
  }

  void convertHex() {
    int v = int.parse(ctrlBil.text.toString(), radix: 16);
    hexValue = v.toRadixString(16);
    decValue = num.parse(v.toRadixString(10));
    octValue = num.parse(v.toRadixString(8));
    binValue = num.parse(v.toRadixString(2));
  }

  void convertDec() {
    print("Method convertDec");
    int v = num.parse(ctrlBil.text.toString());
    hexValue = v.toRadixString(16);
    decValue = num.parse(v.toRadixString(10));
    octValue = num.parse(v.toRadixString(8));
    binValue = num.parse(v.toRadixString(2));
    print(decValue);
  }

  void convertBin() {
    int v = int.parse(ctrlBil.text.toString(), radix: 2);
    hexValue = v.toRadixString(16);
    decValue = num.parse(v.toRadixString(10));
    octValue = num.parse(v.toRadixString(8));
    binValue = num.parse(v.toRadixString(2)); // todo Invalid radix-2 number (at character 1)
  }

  void convertOct() {
    int v = int.parse(ctrlBil.text.toString(), radix: 8);
    hexValue = v.toRadixString(16);
    decValue = num.parse(v.toRadixString(10));
    octValue = num.parse(v.toRadixString(8));
    binValue = num.parse(v.toRadixString(2));
  }
}
