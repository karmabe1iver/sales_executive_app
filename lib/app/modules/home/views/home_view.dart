import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sales_executive_app/app/modules/home/views/forgotpassword_view.dart';
import 'package:sales_executive_app/app/routes/app_pages.dart';
import 'package:sales_executive_app/components/custombutton.dart';
import 'package:sales_executive_app/components/textformfield.dart';
import 'package:sales_executive_app/utils/my_theme.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,

        body: Stack(
      children: [
        Container(
          height: Get.height,
          width: Get.width,
          color: MyTheme.primaryColor,
          child: Column(
            children: [
              SizedBox(
                height: Get.height * .1,
              ),
              Text(
                'WELCOME',
                style: MyTheme.regularTextStyle(
                    color: MyTheme.white,
                    textSize: Get.height * .043,
                    fontWeight: FontWeight.w600),
              ),
              Text(
                'SIGN IN TO CONTINUE',
                style: MyTheme.regularTextStyle(
                    color: MyTheme.white,
                    textSize: Get.height * .019,
                    fontWeight: FontWeight.w600),
              )
            ],
          ),
        ),
        Positioned(
          height: Get.height * .7,
          bottom: 0,
          child: Container(
            height: Get.height * .7,
            width: Get.width,
            decoration: BoxDecoration(
                color: MyTheme.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(120))),
            child: Padding(
              padding: EdgeInsets.all(Get.height * .018),
              child: Column(
                children: [
                  SizedBox(
                    height: Get.height * .1,
                  ),
                  CustomTextFormField(HintText: 'USERNAME'),
                  Padding(
                      padding: EdgeInsets.only(top: Get.height * .05),
                      child: CustomTextFormField(HintText: "PASSWORD")),
                  Padding(
                    padding: EdgeInsets.only(top: Get.height * .01),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        InkWell(
                          onTap: (){
                            Get.to(ForgotPasswordView());
                          },
                          child: Text(
                            'Forgot password ?',
                            style: MyTheme.regularTextStyle(
                              color: MyTheme.darkblue,
                              textSize: Get.height * .018,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:  EdgeInsets.only(top:Get.height*.028,
                    bottom: MediaQuery.of(context).viewInsets.top),
                    child: Wrap(
                      spacing: Get.height * .01,
                      direction: Axis.vertical,
                      crossAxisAlignment: WrapCrossAlignment.center,
                      children: [
                        CustomButton(buttonText: "Sign in", onpressed: () {
                          Get.toNamed(Routes.DASHBOARD);
                        }),
                        Text(
                          'OR',
                          style: MyTheme.regularTextStyle(
                              textSize: Get.height * .019,
                              fontWeight: FontWeight.w400),
                        ),
                        RichText(
                          text: TextSpan(
                            text: 'New member ? ',
                            style: MyTheme.regularTextStyle(
                              textSize: Get.height * .018,
                              fontWeight: FontWeight.w500,
                            ),
                            children: [
                              TextSpan(
                                  text: 'Sign Up',
                                  style: MyTheme.regularTextStyle(
                                      textSize: Get.height * .018,
                                      fontWeight: FontWeight.w500,
                                      color: MyTheme.darkblue))
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    ));
  }
}
