import 'package:flutter/material.dart';
import 'package:flutter_quote/models/models.dart';
import 'package:flutter_quote/providers/task_providers.dart';
import 'package:flutter_quote/widgets/menu_buttons.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var M = MediaQuery.of(context);
    var screenHeight =
        M.size.height - M.padding.top - AppBar().preferredSize.height;
    var screenWidth = M.size.width;
    // print('screenHeight : ${M.size.height}');
    // print('screenWidth : ${M.size.width}');
    // print('screenPaddingTop : ${M.padding.top}');
    // print('AppBarHeight : ${AppBar().preferredSize.height}');
    final List<String> ImageList = [
      'assets/images/slide1.jpg',
      'assets/images/slide2.jpg',
      'assets/images/slide3.jpg',
    ];

    return Scaffold(
      extendBodyBehindAppBar: false,
      backgroundColor: Color(0xff212529),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        elevation: 0,
        title: Text(
          '헬창 명언 모음집',
          style: TextStyle(color: Colors.amber, fontWeight: FontWeight.w600),
        ),
      ),
      body: Column(
        children: [
          Container(
            height: screenHeight * 0.35,
            child: Swiper(
              itemCount: ImageList.length,
              pagination: new SwiperPagination(),
              // control: new SwiperControl(),
              autoplay: true,
              autoplayDelay: 5000,
              itemBuilder: (context, index) {
                return Stack(
                  children: <Widget>[
                    Center(
                      child: Image.asset(
                        ImageList[index],
                        width: screenWidth,
                        height: screenHeight * 0.35,
                        fit: BoxFit.cover,
                        color: Colors.black54,
                        colorBlendMode: BlendMode.darken,
                      ),
                    ),
                    Center(
                        child: Container(
                      child: Text(
                        'SLIDE  #${index}',
                        style: TextStyle(color: Colors.white, fontSize: 30),
                      ),
                    )),
                  ],
                );
              },
            ),
          ),
          Container(
            height: screenHeight * 0.65,
            child: Column(
              children: [
                MenuButtons(
                    screenHeight: screenHeight, screenWidth: screenWidth),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
