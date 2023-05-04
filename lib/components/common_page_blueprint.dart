import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../utils/my_theme.dart';

class PageBluePrint extends StatelessWidget {
  Widget widget;
   PageBluePrint({Key? key,required this.widget}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Stack(
      children: [
      Container(
      height: Get.height,
      width: Get.width,
      color: MyTheme.darkblue,
    ),
    Positioned(
    top: Get.height * .135,
    left: 0,
    child:Container(
    height: Get.height * .865,
    width: Get.width,
    decoration: BoxDecoration(
    color: MyTheme.white,
    borderRadius:
    BorderRadius.only(topLeft: Radius.circular(117))),
    child:widget
    )),
    ]);
  }
}
