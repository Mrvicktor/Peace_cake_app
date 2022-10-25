import 'package:flutter/material.dart';
import 'package:peace_cake/Pages/home_page.dart';
import 'package:peace_cake/navpages/cake_main_page.dart';
import 'package:peace_cake/widgets/choice_button.dart';

import '../cake_text.dart';
import '../widgets/cake_large_text.dart';
import '../widgets/responsive_button.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({Key? key}) : super(key: key);

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  int gottenStars = 4;
  int selectedIndex =-1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Stack(
          children: [
            Positioned(
                left: 0,
                right: 0,
                child: Container(
                  width: double.maxFinite,
                  height: 350,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('img/cake13.jpg'),
                        fit: BoxFit.cover
                    ),

                  ),
                )),
           Positioned(
             top: 30,
               left:10,
               right: 30,
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
               IconButton(onPressed: (){}, icon: Icon(Icons.menu),
                 color:Colors.white,
               ),

               IconButton(onPressed: (){}, icon: Icon(Icons.shopping_cart),
                 color:Colors.white,),

             ],
           )
           ),
            Positioned(
                top: 320,
                child: Container(
                  padding: EdgeInsets.only(top: 20,right: 20,left: 20),
              width: MediaQuery.of(context).size.width,
                  height: 500,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30)
                    )
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          cakelargetext(text: 'Vanilla cream', color: Colors.black54,),
                          cakelargetext(text: '₦10,000',color: Colors.cyan,),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          Icon(Icons.location_on, color: Colors.red[100],),
                          SizedBox(width: 5,),
                          CakeText(text:'LAGOS Mainland',size: 10, color: Colors.black26,),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          Wrap(
                            children:
                              List.generate(5, (index) {
                                return Icon(Icons.star, color:index<gottenStars? Colors.orangeAccent:Colors.black12, size: 15,);
                              }
                              ),

                          ),
                          SizedBox(width: 10,),
                          CakeText(text: '(4.0)', color: Colors.black38,size: 15,)
                        ],
                      ),
                      SizedBox(height: 20,),
                      cakelargetext(text: 'CHOICE', color: Colors.black54, size: 20,),
                      SizedBox(height: 5,),
                      CakeText(text: 'Number of cakes needed', color: Colors.black26, size: 14,),
                      SizedBox(height: 10,),
                      Wrap(
                        children:List.generate(5, (index) {
                         return InkWell(
                           onTap: (){
                             setState(() {
                               selectedIndex=index;
                             });
                           },
                           child: Container(
                             margin: EdgeInsets.only(right: 10),
                             child: ChoiceButton(
                                 size:50,
                                 color: selectedIndex==index?Colors.white:Colors.black,
                                 backgroundColor: selectedIndex==index?Colors.black:Colors.grey.withOpacity(0.2),
                                 borderColor: selectedIndex==index?Colors.black:Colors.black12,
                               text: (index+1).toString(),
                             ),
                           ),
                         );
                        })
                      ),
                      SizedBox(height: 20,),
                      cakelargetext(text: 'Descrption', color: Colors.black.withOpacity(0.8),size: 20,),
                      SizedBox(height: 10,),
                      CakeText(text: 'Vanilla cake is a type of bread cake that is very special '
                        'all ingredients are natural materials '
                        'which means Vanilla is natural.', size: 16,),




                    ],
                  ),
            ),),
            Positioned(
                bottom: 10,
                left: 20,
                right: 20,
                child: Row(
              children: [
                ChoiceButton(size: 50, color: Colors.redAccent,
                    backgroundColor: Colors.white,
                    borderColor: Colors.black26,
                isIcon: true,
                icon: Icons.favorite_border,),
                SizedBox(width: 100,),
     //           ResponsiveButton(
       //           isResponsive: true,
  //              ),
                Container(
                  width: 150,
                  height: 50,
                  child: ElevatedButton(
                    child: Text('Buy',style: TextStyle(
                        fontSize: 20,
                        color: Colors.black),
                    ),

                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const CakeMainPage()),
                      );
                    },
                  ),
                ),

              ],

            ))



          ],
        ),

      ),
    );
  }
}
