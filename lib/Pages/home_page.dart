import 'package:flutter/material.dart';
import 'package:peace_cake/Pages/details_page.dart';
import 'package:peace_cake/navpages/bar_item_page.dart';
import 'package:peace_cake/navpages/my_page.dart';
import 'package:peace_cake/navpages/search_page.dart';
import 'package:peace_cake/widgets/cake_large_text.dart';
import '../cake_text.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  List images = [
    'cake2.jpg',
    'cake10.jpg',
    'cake5.jpg',
    'cake12.jpg',
    'cake13.jpg',
    'cake14.jpg',
  ];
  List images2 = [
    'CAKE1.jpg',
    'Cake3.jpg',
    'cake15.jpg',
    'cake16.jpg',
    'cake8.jpg',
    'cake9.jpg',
  ];
  List images3 = [
    'cake11.jpg',
    'cake6.jpg',
    'cake4.jpg',
    'c_cake3.jpg',
    'c_cake2.jpg',
    'c_cake1.jpg',
  ];

  var images1 = {
    'c_cake1.jpg': 'Butter ₦6k',
    'c_cake2.jpg': 'Drip ₦5k ',
    'c_cake3.jpg': 'classic ₦4k',
    'c_cake4.jpg': 'cherry ₦8k',
  };

  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 3, vsync: this);
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(top: 30, left: 20),
            child: Row(
              children: [
                Icon(
                  Icons.menu,
                  size: 30,
                  color: Colors.black54,
                ),
                Expanded(child: Container()),
                Container(
                  margin: EdgeInsets.only(right: 20),
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey.withOpacity(0.5),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            margin: EdgeInsets.only(
              right: 20,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.only(left: 20),
                  width: 200,
                  child: cakelargetext(text: 'PEACE CAKE'),
                ),
                ElevatedButton(
                  child: Text(
                    'Buy',
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const DetailsPage()),
                    );
                  },
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Container(
            child: Align(
              alignment: Alignment.centerLeft,
              child: TabBar(
                controller: _tabController,
                labelColor: Colors.black,
                unselectedLabelColor: Colors.grey,
                isScrollable: true,
                indicatorSize: TabBarIndicatorSize.label,
                indicator: CircleTabIndicator(color: Colors.blue, radius: 4),
                tabs: [
                  Tab(
                    text: 'Chocolate',
                  ),
                  Tab(
                    text: 'Butter cake',
                  ),
                  Tab(
                    text: 'Chiffon cake',
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              left: 20,
            ),
            height: 200,
            width: double.maxFinite,
            child: TabBarView(
              controller: _tabController,
              children: [
                ListView.builder(
                    itemCount: images.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        margin: EdgeInsets.only(right: 15, top: 10),
                        width: 200,
                        height: 300,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                            image: DecorationImage(
                              image: AssetImage('img/' + images[index]),
                              fit: BoxFit.cover,
                            )),
                      );
                    }),
                ListView.builder(
                    itemCount: images2.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        margin: EdgeInsets.only(right: 15, top: 10),
                        width: 200,
                        height: 300,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                            image: DecorationImage(
                              image: AssetImage('img/' + images2[index]),
                              fit: BoxFit.cover,
                            )),
                      );
                    }),
                //     Text("Hie"),
                ListView.builder(
                    itemCount: images3.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        margin: EdgeInsets.only(right: 15, top: 10),
                        width: 200,
                        height: 300,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                            image: DecorationImage(
                              image: AssetImage('img/' + images3[index]),
                              fit: BoxFit.cover,
                            )),
                      );
                    }),
                //     Text("Welcome"),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            margin: EdgeInsets.only(left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                cakelargetext(
                  text: 'Explore more',
                  size: 20,
                ),
                CakeText(
                  text: 'see all',
                  size: 16,
                  color: Colors.black38,
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Container(
            height: 100,
            width: double.maxFinite,
            margin: EdgeInsets.only(left: 20),
            child: ListView.builder(
                itemCount: 4,
                scrollDirection: Axis.horizontal,
                itemBuilder: (_, index) {
                  return Container(
                    margin: EdgeInsets.only(right: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          //  margin: EdgeInsets.only(right: 50),
                          width: 80,
                          height: 80,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                            image: DecorationImage(
                              image: AssetImage(
                                  'img/' + images1.keys.elementAt(index)),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Expanded(
                          child: Container(
                            child: CakeText(
                              text: images1.values.elementAt(index),
                              color: Colors.red,
                              size: 15,
                            ),
                          ),
                        )
                      ],
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}

class CircleTabIndicator extends Decoration {
  final Color color;
  double radius;
  CircleTabIndicator({required this.color, required this.radius});
  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    // TODO: implement createBoxPainter
    return _CirclePainter(color: color, radius: radius);
  }
}

class _CirclePainter extends BoxPainter {
  final Color color;
  double radius;
  _CirclePainter({required this.color, required this.radius});
  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    Paint _paint = Paint();
    _paint.color = color;
    _paint.isAntiAlias = true;
    final Offset circleOffset = Offset(
        configuration.size!.width / 2 - radius / 2, configuration.size!.height);

    canvas.drawCircle(offset + circleOffset, radius, _paint);
    // TODO: implement paint
  }
}
