import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sales_executive_app/components/custombutton.dart';
import 'package:sales_executive_app/components/textformfield.dart';
import 'package:sales_executive_app/utils/asset_helper.dart';
import 'package:sales_executive_app/utils/my_theme.dart';

import '../controllers/shop_controller.dart';

class AddShopView extends GetView<ShopController> {
  const AddShopView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Stack(
      children: [
        Container(
          height: Get.height,
          width: Get.width,
          color: MyTheme.darkblue,
        ),
        Positioned(
          top: Get.height * .135,
          left: 0,
          child: Container(
            height: Get.height * .865,
            width: Get.width,
            decoration: BoxDecoration(
                color: MyTheme.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(117))),
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.only(
                    left: Get.width * .06,
                    right: Get.width * .06,
                    top: Get.height * .07,
                    bottom: MediaQuery.of(context).viewInsets.bottom),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      child: Center(
                        child: Text(
                          'ADD A SHOP',
                          style: MyTheme.regularTextStyle(
                              fontWeight: FontWeight.w600,
                              textSize: Get.height * .027,
                              color: MyTheme.darkblue),
                        ),
                      ),
                    ),
              SizedBox(height: Get.height*.04,),
                    CustomTextFormField(
                      HintText: "Shop Name",
                      color: Colors.black,
                      textsize: Get.height * .022,
                    ),
                    SizedBox(height: Get.height*.02,),
                    CustomTextFormField(
                      HintText: "Customer Name",
                      color: Colors.black,
                      textsize: Get.height * .022,
                    ),
                    SizedBox(height: Get.height*.02,),
                    CustomTextFormField(
                      HintText: "Phone Number",
                      color: Colors.black,
                      textsize: Get.height * .022,
                    ),
                    SizedBox(height: Get.height*.02,),
                    CustomTextFormField(
                      HintText: "E-mail",
                      color: Colors.black,
                      textsize: Get.height * .022,
                    ),
                    SizedBox(height: Get.height*.01,),
                    CustomTextFormField(
                      HintText: "Address Line 1",
                      color: Colors.black,
                      textsize: Get.height * .022,
                    ),
                    SizedBox(height: Get.height*.02,),
                    CustomTextFormField(
                      HintText: "Address Line 2",
                      color: Colors.black,
                      textsize: Get.height * .022,
                    ),
                    SizedBox(height: Get.height*.02,),
                    CustomTextFormField(
                      HintText: "Pincode",
                      color: Colors.black,
                      textsize: Get.height * .022,
                    ),
                    SizedBox(height: Get.height*.02,),
                    CustomTextFormField(
                      HintText: "Instructions",
                      color: Colors.black,
                      textsize: Get.height * .022,
                    ),
                    SizedBox(height: Get.height*.02,),
                    CustomButton(buttonText: "Sumbit", onpressed: () {}),
                    SizedBox(height: Get.height*.1,)
                  ],
                ),
              ),
            ),
          ),
        ),
        Positioned(
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
            ))
      ],
    ));
  }
}
