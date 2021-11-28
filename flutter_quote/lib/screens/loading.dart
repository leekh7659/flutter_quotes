import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_quote/screens/home.dart';
import 'package:get/get.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(milliseconds: 2000), () {
      Get.offNamed("/home");
    });
  }

  @override
  Widget build(BuildContext context) {
    final String BackgroungImage = "assets/images/loadingimg.png";
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return WillPopScope(
      onWillPop: () async => false,
      child: MediaQuery(
        data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
        child: Scaffold(
          backgroundColor: Colors.amber,
          body: Container(
            child: Text("ddddd"),
          ),
        ),
      ),
    );
  }
}
