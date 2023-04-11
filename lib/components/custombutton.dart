import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../utils/my_theme.dart';

class CustomButton extends StatelessWidget {
  String buttonText;
  final   onpressed;
   CustomButton({Key? key,required this.buttonText,required this.onpressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  TextButton(
      style: ButtonStyle(overlayColor:MaterialStateProperty.all(Colors.transparent)),
      onPressed: onpressed,
      child: Container(
        height: Get.height * .058,
        width: Get.width * .4,
        decoration: BoxDecoration(
          borderRadius:
          BorderRadius.only(topLeft: Radius.circular(60)),
          color: MyTheme.darkblue,
        ),
        child: Center(
          child: Text(
           buttonText,
            style: MyTheme.regularTextStyle(
                color: MyTheme.white,
                textSize: Get.height * .020,
                fontWeight: FontWeight.w600),
          ),
        ),
      ),
    );
  }
}
