import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MenuButtons extends StatelessWidget {
  late final double screenHeight;
  late final double screenWidth;
  MenuButtons({required this.screenHeight, required this.screenWidth});

  @override
  Widget build(BuildContext context) {
    return InkWell(
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
    );
  }
}
