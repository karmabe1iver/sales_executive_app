import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:sales_executive_app/components/customcard.dart';
import 'package:sales_executive_app/utils/asset_helper.dart';
import 'package:sales_executive_app/utils/my_theme.dart';

import '../controllers/dashboard_controller.dart';

class DashboardView extends GetView<DashboardController> {
  const DashboardView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:Stack(
        children: [
          /// cards Secton
          Container(
            height: Get.height,
            width: Get.width,
            color: MyTheme.white,
            child: Padding(
              padding: EdgeInsets.only(top: Get.height*.4,left: Get.width*.08),
              child: Wrap(
                spacing: 32,
                runSpacing: 24,
                children: [
                 CustomCard(
                   AssetHelperImag: AssetHelper.ProfileDp
                       ,titile: 'Pesonal Details',
                   onTap: (){}
                 ), CustomCard(
                   AssetHelperImag: AssetHelper.CheckerIcon
                       ,titile: 'Sale OverView',
                   onTap: (){}
                 ), CustomCard(
                   AssetHelperImag: AssetHelper.ProfileDp
                       ,titile: 'Sales Activities',
                   onTap: (){}
                 ), CustomCard(
                   AssetHelperImag: AssetHelper.CheckerIcon
                       ,titile: 'Sales Goal',
                   onTap: (){}
                 ), CustomCard(
                   AssetHelperImag: AssetHelper.ProfileDp
                       ,titile: 'Pesonal Details',
                   onTap: (){}
                 ) , CustomCard(
                      AssetHelperImag: AssetHelper.CheckerIcon
                      ,titile: 'Sale OverView',
                      onTap: (){}
                  ), CustomCard(
                      AssetHelperImag: AssetHelper.ProfileDp
                      ,titile: 'Sales Activities',
                      onTap: (){}
                  ), CustomCard(
                      AssetHelperImag: AssetHelper.CheckerIcon
                      ,titile: 'Sales Goal',
                      onTap: (){}
                  ),

              ],),
            ),
          ),
         /// Cards Section ends

          ///Head Section
          Container(
            height: Get.height*.35,
            decoration: BoxDecoration(
              color: MyTheme.darkblue,
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(120))
            ),
            child: Center(
              child: Wrap(
                direction: Axis.vertical,
                crossAxisAlignment: WrapCrossAlignment.center,
                children: [
                  Stack(
                    children: [
                      CircleAvatar(
                        radius: 80,
                        backgroundColor: Colors.transparent,
                        child: CircleAvatar(
                          radius: 65,
                          backgroundColor: MyTheme.white,
                          child: CircleAvatar(
                            radius: 60,
                            backgroundColor: MyTheme.white,

                            foregroundImage: AssetImage(AssetHelper.Dp,),
                          ),
                        ),
                      ),
                      Positioned(
                          bottom:30,
                          right:-20,
                          child:  RawMaterialButton(
                        onPressed: () {},
                        elevation: 6.0,
                        fillColor: MyTheme.white,
                        child:Image.asset(AssetHelper.UpdateDpIcon),
                        shape: CircleBorder(),),),
                    ],
                  ),
                  Text('TOM JOE', style: MyTheme.regularTextStyle(
                    fontWeight: FontWeight.w600,
                    textSize: Get.height*.027,
                    color: MyTheme.white
                  ),)
                ],
              ),
            ),
          ),
          ///Head Section Ends

        ],
      )
    );
  }
}
