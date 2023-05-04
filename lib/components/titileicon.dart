import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../utils/asset_helper.dart';
import '../utils/my_theme.dart';

class TitleIcon extends StatelessWidget {
  const TitleIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Positioned(
        top: Get.height * .08,
        left: 10,
        right: 10,
        child: Container(
          height: Get.height * .09,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                offset: Offset.zero,
                color: Colors.black26,
                blurStyle: BlurStyle.outer,
                blurRadius: 10,
              ),
            ],
            color: MyTheme.white,
          ),
          child: Center(
            child: Image.asset(AssetHelper.Shop),
          ),
        ));
  }
}
