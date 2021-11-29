import 'package:flutter/material.dart';
import 'package:flutter_quote/models/models.dart';
import 'package:flutter_quote/providers/task_providers.dart';
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
    print('screenHeight : ${M.size.height}');
    print('screenWidth : ${M.size.width}');
    print('screenPaddingTop : ${M.padding.top}');
    print('AppBarHeight : ${AppBar().preferredSize.height}');
    final List<String> ImageList = [
      'https://www.muscleandfitness.com/wp-content/uploads/2019/05/man-gym-lat-pulldown-1109.jpg?w=1109&h=614&crop=1&quality=86&strip=all',
      'https://www.sponser.com/media/catalog/product/h/e/header_pre_workout_booster.png',
      'https://i.ytimg.com/vi/zu0W2MRmN1I/maxresdefault.jpg'
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
                      child: Image.network(
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
                InkWell(
                  onTap: () {
                    Get.toNamed("/phrase1");
                  },
                  child: Container(
                    margin: EdgeInsets.only(
                      left: 20,
                      right: 20,
                      top: 20,
                      bottom: 20,
                    ),
                    padding: EdgeInsets.all(20),
                    height: (screenHeight * 0.6) * 0.2,
                    decoration: BoxDecoration(
                      color: Color(0xff343a40),
                      borderRadius: BorderRadius.circular(7),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '위인 명언 모음집',
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                        Icon(
                          Icons.keyboard_arrow_right_sharp,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
