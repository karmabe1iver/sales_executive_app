import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utils/asset_helper.dart';
import '../../../../utils/my_theme.dart';

class EmailsendviewView extends GetView {
  const EmailsendviewView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            height: Get.height,
            width: Get.width,
            color: MyTheme.primaryColor,
            child: Opacity(
              opacity: .8,
              child: Image.asset(
                AssetHelper.SalesExecutive,
                fit: BoxFit.fill,
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: Get.height * .12,
                width: Get.width * .18,
                child: Image.asset(AssetHelper.RoundedCorrect),
              ),
              Text(
                'CHECK YOUR EMAIL',
                style: MyTheme.regularTextStyle(
                    color: MyTheme.white,
                    textSize: Get.height*.038,
                    fontWeight: FontWeight.w700),
              ),
              Text(
                'We have sent you a reset password \n       link to your email address',
                maxLines: 2,
                style: MyTheme.regularTextStyle(
                    color: MyTheme.white,
                    textSize: Get.height*.020,
                    fontWeight: FontWeight.w400),
              )
            ],
          ),
        ],
      ),
    );
  }
}
