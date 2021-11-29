import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_quote/screens/home.dart';
import 'package:flutter_quote/screens/loading.dart';
import 'package:flutter_quote/screens/phrase1_screen.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

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
        GetPage(
          name: '/phrase1',
          page: () => phrase1Screen(),
        ),
      ],
      title: '헬스 명언 모음집',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoadingScreen(),
    );
  }
}
