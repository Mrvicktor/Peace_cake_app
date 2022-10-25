import 'package:flutter/material.dart';

import 'package:peace_cake/cake_text.dart';

class ResponsiveButton extends StatelessWidget {
  bool? isResponsive;
  double? width;
   ResponsiveButton({Key? key, this.width = 120, this.isResponsive=false, }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(

        width: isResponsive==true?double.maxFinite:width,
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: Colors.blue[700],
        ),

        child: Row(

          mainAxisAlignment: isResponsive == true?MainAxisAlignment.spaceBetween: MainAxisAlignment.center,

          children: [

            isResponsive==true?Container(
                margin: EdgeInsets.only(left: 20),
                child: CakeText(text:'purchase now',color: Colors.white,)):Container(),
           Icon(Icons.arrow_forward_ios,
           size: 35,
           color: Colors.white,),


          ],

        ),

      ),
    );
  }
}
