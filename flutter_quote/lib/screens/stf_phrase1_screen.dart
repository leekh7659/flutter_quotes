import 'package:flutter/material.dart';
import 'package:flutter_quote/models/models.dart';
import 'package:flutter_quote/providers/fetch.dart';

class StfPhrase1Screen extends StatefulWidget {
  @override
  _StfPhrase1ScreenState createState() => _StfPhrase1ScreenState();
}

class _StfPhrase1ScreenState extends State<StfPhrase1Screen> {
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    var M = MediaQuery.of(context);
    var screenHeight =
        M.size.height - M.padding.top - AppBar().preferredSize.height;
    var screenWidth = M.size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text('위인 명언집'),
      ),
      body: FutureBuilder<List<Phrase1>>(
        future: fetchPost(),
        builder: (context, snapshot) {
          if (snapshot.hasData == false) {
            return CircularProgressIndicator();
          } else if (snapshot.hasError) {
            throw Text('failed load to data');
          } else {
            int length = snapshot.data!.length;
            print(_count);
            return Column(
              children: [
                Expanded(
                  flex: 5,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 40, right: 40),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "\" ${snapshot.data![_count].description} \"",
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "- ${snapshot.data![_count].name} -",
                          style: TextStyle(fontSize: 22),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    color: Colors.brown,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        IconButton(
                          onPressed: () {
                            if (_count > 0) {
                              setState(() {
                                _count--;
                              });
                            }
                          },
                          icon: Icon(Icons.arrow_left),
                          iconSize: 50,
                        ),
                        IconButton(
                          onPressed: () {
                            if (_count < length - 1) {
                              setState(() {
                                _count++;
                              });
                            }
                          },
                          icon: Icon(Icons.arrow_right),
                          iconSize: 50,
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                    flex: 4,
                    child: Container(
                      color: Colors.amber,
                    )),
              ],
            );
          }
        },
      ),
    );
  }
}
