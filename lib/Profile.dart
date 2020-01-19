import 'package:flutter/material.dart';
import 'package:project_uas/widget/CircleImage.dart';
import 'package:project_uas/widget/TextName.dart';

class Profile extends StatelessWidget {
  static const routeName = "/profile";

  @override
  Widget build(BuildContext context) {
    final double statusBarHeight = MediaQuery.of(context).padding.top;
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: statusBarHeight),
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
        child: Stack(
          children: <Widget>[
            Container(),
            InkWell(
              onTap: () => Navigator.pop(context),
              child: Container(
                padding: EdgeInsets.all(16),
                child: Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                ),
              ),
            ),
            Positioned(
              bottom: 60,
              top: 80,
              left: 0,
              right: 0,
              child: Card(
                margin: EdgeInsets.only(left: 16, right: 16),
                color: Colors.white.withOpacity(0.7),
                child: Container(
                  height: 500,
                ),
              ),
            ),
            Positioned(
              bottom: 40,
              top: 60,
              left: 0,
              right: 0,
              child: Card(
                margin: EdgeInsets.only(left: 25, right: 25),
                color: Colors.white,
                child: Container(
                  height: 500,
                  child: Column(
                    children: <Widget>[
                      Container(
                        height: 200,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            CircleImage(
                              img: "assets/images/myphoto.jpg",
                              width: 120,
                              height: 120,
                            ),
                          ],
                        ),
                      ),
                      TextName("Ghozi Mahdi"),
                      Text("profghozimahdi@gmail.com"),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
