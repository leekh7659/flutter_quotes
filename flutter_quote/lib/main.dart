import 'package:flutter/material.dart';
import 'package:flutter_quote/providers/task_providers.dart';
import 'package:flutter_quote/screens/home.dart';
import 'package:flutter_quote/screens/loading.dart';
import 'package:flutter_quote/screens/phrase1_screen.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(QuoteApp());
}

class QuoteApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => QuotesProvider(),
      child: GetMaterialApp(
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
            page: () => Phrase1Screen(),
          ),
        ],
        title: '헬스 명언 모음집',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: HomeScreen(),
        // home: LoadingScreen(),
      ),
    );
  }
}
