import 'package:flutter/material.dart';
import 'package:peace_cake/navpages/bar_item_page.dart';
import 'package:peace_cake/Pages/home_page.dart';
import 'package:peace_cake/navpages/my_page.dart';
import 'package:peace_cake/navpages/search_page.dart';

class CakeMainPage extends StatefulWidget {
  const CakeMainPage({Key? key}) : super(key: key);

  @override
  State<CakeMainPage> createState() => _CakeMainPageState();
}
class _CakeMainPageState extends State<CakeMainPage> {

  List pages = [
    HomePage(),
    BarItemPage(),
    SearchPage(),
    MyPage(),
  ];
  int currentIndex=0;
  void onTap(int index){
    setState(() {
      currentIndex = index;
    });


  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        unselectedFontSize: 0,
        selectedFontSize: 0,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        onTap: onTap,
        currentIndex: currentIndex,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey.withOpacity(0.5),
        showUnselectedLabels: true,
        showSelectedLabels: true,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.apps),label: 'Home',),
          BottomNavigationBarItem(icon: Icon(Icons.bar_chart_sharp),label: 'Bar',),
          BottomNavigationBarItem(icon: Icon(Icons.search),label: 'Search',),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: 'profile',),

        ],

      ),
    );
  }
}
