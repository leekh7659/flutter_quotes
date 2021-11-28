import 'package:flutter/material.dart';
import 'package:flutter_quote/models/models.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late Future<Phrase1> phrase1;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    phrase1 = fetchPhrase1();
  }

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    final List<String> ImageList = [
      'https://www.muscleandfitness.com/wp-content/uploads/2019/05/man-gym-lat-pulldown-1109.jpg?w=1109&h=614&crop=1&quality=86&strip=all',
      'https://www.sponser.com/media/catalog/product/h/e/header_pre_workout_booster.png',
      'https://i.ytimg.com/vi/zu0W2MRmN1I/maxresdefault.jpg'
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text('헬창 명언 모음집'),
      ),
      body: Column(
        children: [
          Container(
            height: screenHeight * 0.3,
            child: Swiper(
              itemCount: ImageList.length,
              pagination: new SwiperPagination(),
              control: new SwiperControl(),
              autoplay: false,
              autoplayDelay: 4000,
              itemBuilder: (context, index) {
                return Stack(
                  children: <Widget>[
                    Center(
                      child: Image.network(
                        ImageList[index],
                        height: screenHeight * 0.3,
                        fit: BoxFit.cover,
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
          Expanded(
            // child: GridView.count(
            //   // Create a grid with 2 columns. If you change the scrollDirection to
            //   // horizontal, this produces 2 rows.
            //   crossAxisCount: 2,
            //   // Generate 100 widgets that display their index in the List.
            //   children: List.generate(100, (index) {
            //     return Center(
            //       child: Text(
            //         'Item $index',
            //         style: Theme.of(context).textTheme.headline5,
            //       ),
            //     );
            //   }),
            // ),
            child: FutureBuilder<Phrase1>(
              future: phrase1,
              builder: (context, snapshot) {
                print(snapshot);
                if (snapshot.hasData) {
                  return Text(snapshot.data!.name);
                } else if (snapshot.hasError) {
                  return Text("${snapshot.error}");
                }

                return CircularProgressIndicator();
              },
            ),
          ),
        ],
      ),
    );
  }
}
