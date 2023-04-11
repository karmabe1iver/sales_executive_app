import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sales_executive_app/app/modules/home/views/emailsendview_view.dart';
import 'package:sales_executive_app/components/custombutton.dart';

import '../../../../components/textformfield.dart';
import '../../../../utils/my_theme.dart';

class ForgotPasswordView extends GetView {
  const ForgotPasswordView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: Get.height,
            width: Get.width,
            color: MyTheme.primaryColor,
            child: Column(
              children: [
                SizedBox(
                  height: Get.height * .13,
                ),
                Text(
                  'FORGOT PASSWORD',
                  style: MyTheme.regularTextStyle(
                      color: MyTheme.white,
                      textSize: Get.height * .040,
                      fontWeight: FontWeight.w600),
                ),
                Text(
                  'ENTER YOUR EMAIL ADDRESS AND \n    WE WOULD SEND YOU A LINK\n      TO REST YOUR PASSWORD',
                  maxLines: 3,
                  style: MyTheme.regularTextStyle(
                      color: MyTheme.white,
                      textSize: Get.height * .019,
                      fontWeight: FontWeight.w600),
                )
              ],
            ),
          ),
          Positioned(
            height: Get.height * .65,
            bottom: 0,
            child: Container(
              height: Get.height * .65,
              width: Get.width,
              decoration: BoxDecoration(
                  color: MyTheme.white,
                  borderRadius:
                      BorderRadius.only(topLeft: Radius.circular(120))),
              child: Padding(
                padding: EdgeInsets.all(Get.height * .028),
                child: Column(
                  children: [
                    SizedBox(
                      height: Get.height * .1,
                    ),
                    CustomTextFormField(HintText: 'EMAIL'),
                    SizedBox(
                      height: Get.height * .07,
                    ),
                    CustomButton(buttonText: 'Send Mail', onpressed: (){
                      Get.to(EmailsendviewView());
                    })
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
