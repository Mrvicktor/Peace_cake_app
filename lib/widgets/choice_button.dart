import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:peace_cake/cake_text.dart';

class ChoiceButton extends StatelessWidget {
  final Color color;
  String? text;
  final icon;
  final Color backgroundColor;
  double size;
  final Color borderColor;
  bool? isIcon;
   ChoiceButton({Key? key,
     this.isIcon=false,
     this.text = "hi",
     this.icon,
     required this.size,
    required this.color,
    required this.backgroundColor,
    required this.borderColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size,
      width: size,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
          color: borderColor,
          width: 1.0
        ),
        color: backgroundColor,
      ),
      child: isIcon==false?Center(child: CakeText(text: text!, color: color,)):Center(child: Icon(icon, color: color,)),
    );
  }
}
