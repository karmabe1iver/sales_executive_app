import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../utils/my_theme.dart';

class CustomButton extends StatelessWidget {
  String buttonText;
  final   onpressed;
   late final width;
   late final height;
   late final textsize;

   CustomButton({Key? key,required this.buttonText,required this.onpressed, this.width,this.height,this.textsize}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  TextButton(
      style: ButtonStyle(overlayColor:MaterialStateProperty.all(Colors.transparent)),
      onPressed: onpressed,
      child: Container(
        height:height==null? Get.height * .058:height,
        width:width==null? Get.width * .4:width,
        decoration: BoxDecoration(
          borderRadius:
          BorderRadius.only(topLeft: Radius.circular(50)),
          color: MyTheme.darkblue,
        ),
        child: Center(
          child: Text(
           buttonText,
            style: MyTheme.regularTextStyle(
                color: MyTheme.white,
                textSize:textsize==null? Get.height * .020:textsize,
                fontWeight: FontWeight.w600),
          ),
        ),
      ),
    );
  }
}
