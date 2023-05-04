import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:sales_executive_app/components/custombutton.dart';
import 'package:sales_executive_app/components/titileicon.dart';
import 'package:sales_executive_app/utils/asset_helper.dart';

import '../../../../utils/my_theme.dart';
import '../controllers/shop_controller.dart';

class ShopList extends GetView<ShopController> {
  const ShopList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  borderRadius:
                      BorderRadius.only(topLeft: Radius.circular(117))),
              child: Padding(
                padding: EdgeInsets.only(
                    left: Get.width * .06,
                    right: Get.width * .06,
                    top: Get.height * .07,
                    bottom: MediaQuery.of(context).viewInsets.bottom),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      child: Center(
                        child: Text(
                          'SHOP LISTS',
                          style: MyTheme.regularTextStyle(
                              fontWeight: FontWeight.w600,
                              textSize: Get.height * .027,
                              color: MyTheme.darkblue),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: Get.height * .01,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          boxShadow: [
                            BoxShadow(
                              offset: Offset.zero,
                              color: Colors.grey.shade300,
                              blurStyle: BlurStyle.outer,
                              blurRadius: 10,
                            )
                          ]),
                      child: TextFormField(
                        cursorColor: MyTheme.blue,
                        decoration: InputDecoration(
                            labelText: 'Search a shop',
                            hoverColor: MyTheme.blue,
                            focusColor: MyTheme.blue,
                            enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.transparent)),
                            border: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.transparent),
                                borderRadius: BorderRadius.circular(30)),
                            suffixIcon: Image.asset(AssetHelper.Search)),
                      ),
                    ),
                    SizedBox(
                      height: Get.height * .02,
                    ),
                    Container(
                      height: Get.height * .5,
                      decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.only(topLeft: Radius.circular(60)),
                          boxShadow: [
                            BoxShadow(
                              offset: Offset.zero,
                              color: Colors.grey.shade300,
                              blurStyle: BlurStyle.outer,
                              blurRadius: 10,
                            )
                          ]),
                      child: ListView.builder(
                          padding: EdgeInsets.only(
                              left: Get.width * .07,
                              right: Get.width * .07,
                              ),
                          itemBuilder: (context, int) {
                            return Column(
                              children: [
                                GestureDetector(
                                  onTap: (){
                                    controller.visibleSts.value= !controller.visibleSts.value;
                                  },
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        height: Get.height * .06,
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            border:
                                                Border.all(color: MyTheme.darkblue)),
                                        child: Image.asset(AssetHelper.ShopList),
                                      ),
                                      SizedBox(
                                        width: Get.width * .03,
                                      ),
                                      Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                            SizedBox(height: Get.height*.025,),
                                          Text(
                                            'SHOP ONE',
                                            style: MyTheme.regularTextStyle(
                                              fontWeight: FontWeight.w500,
                                              textSize: Get.height * .018,
                                              color: MyTheme.blue,
                                            ),
                                          ),
                                          Text(
                                            'Owner Name',
                                            style: MyTheme.regularTextStyle(
                                              fontWeight: FontWeight.w500,
                                              textSize: Get.height * .012,
                                              color: MyTheme.brown,
                                            ),
                                          ),
                                          SizedBox(
                                            height: Get.height * .02,
                                          ),
                                          Obx(
                                            ()=>Visibility(
                                              visible: controller.visibleSts.value,
                                              child: Text(
                                                'Add Order',
                                                style: MyTheme.regularTextStyle(
                                                  fontWeight: FontWeight.w500,
                                                  textSize: Get.height * .016,
                                                  color: MyTheme.blue,
                                                ),
                                              ),
                                              replacement: SizedBox(),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Spacer(),
                                      CustomButton(
                                        height: Get.height*.04,
                                        width: Get.width*.22,
                                        textsize: Get.height*.016,
                                        buttonText: "Detail",
                                        onpressed: () {},
                                      )
                                    ],
                                  ),
                                ),
                                Divider()
                              ],
                            );
                          }),
                    )
                  ],
                ),
              ),
            ),
          ),
          TitleIcon(),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
        backgroundColor: MyTheme.darkblue,
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }
}
