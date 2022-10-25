import 'package:flutter/material.dart';
import 'package:peace_cake/Pages/home_page.dart';
import 'package:peace_cake/cake_text.dart';
import 'package:peace_cake/navpages/cake_main_page.dart';
import 'package:peace_cake/widgets/cake_large_text.dart';
import 'package:peace_cake/widgets/responsive_button.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  List images = [
    "slide1.jpg",
    "slide2.jpg",
    "slide3.jpg",
  ];
  List text = [
    "YOUR HAPPINESS IS OUR PRIORITY",
    "YOUR WEDDING MUST BE THE BEST",
    "YOUR BIRTHDAY SPECIAL DELIVERY",
  ];

  List text2 = [
    'sweet cake is a type of bread cake has meaning and purpose.Sharing the '
        'bread cake symbolizes good luck and prosperity for the couple.',
    'Vanilla cake is a type of bread cake that is very special '
        'all ingredients are natural materials '
        'which means Vanilla is natural.',
    'Chocolate yummy cake is a type of  cake that has its '
        'origins in the Modern world. Everything, from '
        'baking to dividing the cake has a beautiful meaning.',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: images.length,
          itemBuilder: (_, index) {
            return Container(
              width: double.maxFinite,
              height: double.maxFinite,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'img/' + images[index],
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child: Container(
                margin: EdgeInsets.only(top: 420, left: 20, right: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    cakelargetext(
                      text: text[index],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.only(top: 5),
                        child: Column(
                          children: [
                            CakeText(text: text2[index]),
                            SizedBox(
                              height: 10,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(3, (indexSlide) {
                        return Container(
                          margin: EdgeInsets.only(left: 2),
                          width: index == indexSlide ? 25 : 8,
                          height: 8,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: index == indexSlide
                                ? Colors.blue
                                : Colors.blue.withOpacity(0.3),
                          ),
                        );
                      }),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: 60,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Colors.white,
                      ),
                      child: Center(
                        child: ElevatedButton(
                          child: Icon(
                            Icons.arrow_forward_ios,
                            size: 35,
                            color: Colors.white,
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const CakeMainPage()),
                            );
                          },
                        ),
                      ),
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }
}
