import 'package:flutter/material.dart';
import 'package:flutter_quote/screens/home.dart';
import 'package:flutter_quote/screens/loading.dart';
import 'package:get/get.dart';

void main() {
  runApp(QuoteApp());
}

class QuoteApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      getPages: [
        GetPage(
          name: '/home',
          page: () => HomeScreen(),
        ),
        GetPage(
          name: '/loading',
          page: () => LoadingScreen(),
        ),
        //You can define a different page for routes with arguments, and another without arguments, but for that you must use the slash '/' on the route that will not receive arguments as above.
      ],
      title: '헬스 명언 모음집',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoadingScreen(),
    );
  }
}
