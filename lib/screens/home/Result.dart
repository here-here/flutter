import 'dart:async';

import 'package:flutter/material.dart';

import 'package:attend_here/screens/home/ImageBanner.dart';
import 'package:attend_here/screens/home/TextSection.dart';

class Result extends StatelessWidget
{
  static const routeName = '/passArguments';
  final String id;
  final String UUID;
  final String msg;

  const Result({
    Key key,
    @required this.id,
    @required this.UUID,
    @required this.msg,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double height = size.height/3;
    return new MaterialApp(
        debugShowCheckedModeBanner: false,
        home: new Stack(
          children: [
            ImageBanner("assets/images/Logo.png"),
            Scaffold(
                body: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage("assets/images/Logo.png"), fit: BoxFit.cover),
                  ),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        TextSection(Text('This is the Result screen')),
                        TextSection(Text('Here Here')),
                        TextSection(Text('Attendance')),
                        RaisedButton(
//                        padding: EdgeInsets.fromLTRB(10.0, 50.0, 10.0, 5.0),
                          color: Colors.blue,
                          child: Text("Test"),
//                          onPressed: () {myFunction();},
                        ),
                        RaisedButton(
                          color: Colors.red,
                          child: Text("get beacons"),
//                          onPressed: () {myFunction2();},
                        ),

                      ],
                    ),
                  ),
                )

            )],
        )
    );
  }
}