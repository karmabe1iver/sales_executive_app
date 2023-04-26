import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

Widget CustomCard({AssetHelperImag, titile, onTap, scale}) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      height: Get.mediaQuery.size.height * .12,
      width: Get.mediaQuery.size.width * .38,
      decoration:
      BoxDecoration(borderRadius:BorderRadius.only(topLeft: Radius.circular(60)),
          boxShadow: [
        BoxShadow(
          offset: Offset.zero,
          color: Colors.grey.shade300,
          blurStyle: BlurStyle.outer,
          blurRadius: 10,
        )
      ]),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
            Image.asset(
              AssetHelperImag,
              scale: scale,
            ),
          SizedBox(
            height: 10,
          ),
          FittedBox(
            child: Text(
              '$titile',
              style: TextStyle(
                fontSize: Get.height*.018,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w400,
                color: Colors.black,
              ),
            ),
          )
        ],
      ),
    ),

  );
}
