import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_quote/screens/home.dart';
import 'package:flutter_quote/screens/loading.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

void main() async {
  var url = Uri.parse("http://10.0.2.2:8000/phrase1");
  final response = await http.get(url);
  print(response);
  print(response.statusCode);
  print(jsonDecode(utf8.decode(response.bodyBytes)));
  // runApp(QuoteApp());
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
