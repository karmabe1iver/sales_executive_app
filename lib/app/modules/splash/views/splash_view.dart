import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sales_executive_app/app/routes/app_pages.dart';
import 'package:sales_executive_app/utils/asset_helper.dart';
import 'package:sales_executive_app/utils/my_theme.dart';


class SpalshScreen extends StatefulWidget {
  const SpalshScreen({Key? key}) : super(key: key);

  @override
  State<SpalshScreen> createState() => _SpalshScreenState();
}

class _SpalshScreenState extends State<SpalshScreen> {

  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3),
            ()=>Get.offNamed(Routes.HOME)

    );
  }
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
              opacity: .1,
              child: Image.asset(
                AssetHelper.SalesExecutive,
                fit: BoxFit.fill,
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: Get.height * .12,
                width: Get.width * .18,
                child: Image.asset(AssetHelper.SplashDp),
              ),
              Container(
                child: Text(
                  'SALES EXECUTIVE APP',
                  style: MyTheme.regularTextStyle(
                      color: MyTheme.white,
                      textSize: 33,
                      fontWeight: FontWeight.w700),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
