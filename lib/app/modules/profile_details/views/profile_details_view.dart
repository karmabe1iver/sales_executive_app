import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sales_executive_app/components/custombutton.dart';
import 'package:sales_executive_app/components/detailcard.dart';
import 'package:sales_executive_app/utils/my_theme.dart';

import '../../../../components/textformfield.dart';
import '../../../../utils/asset_helper.dart';
import '../controllers/profile_details_controller.dart';

class ProfileDetailsView extends GetView<ProfileDetailsController> {
  const ProfileDetailsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        //alignment: AlignmentDirectional.center,
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
              height: Get.height,
              width: Get.width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(90),
                  ),
                  color: MyTheme.white),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: Get.height * .13,
                    ),
                    SizedBox(
                      child: Center(
                        child: Text(
                          'TOM JOE',
                          style: MyTheme.regularTextStyle(
                              fontWeight: FontWeight.w600,
                              textSize: Get.height * .027,
                              color: MyTheme.darkblue),
                        ),
                      ),
                    ),
                    DetailsCard(
                        heading: "PERSONAL DETAILS",
                        wrap: Wrap(
                          spacing: 8,
                          direction: Axis.vertical,
                          children: [
                            Container(
                              width: Get.width * .9,
                              height: Get.height * .027,
                              child: Wrap(
                                direction: Axis.horizontal,
                                alignment: WrapAlignment.spaceBetween,
                                crossAxisAlignment: WrapCrossAlignment.start,
                                children: [
                                  content(
                                      field: 'Employee ID',
                                      deatail: '0211231312'),
                                  MaterialButton(
                                      onPressed: () async {
                                        await showDialog<Widget>(
                                            barrierColor: Colors.transparent,
                                            context: context,
                                            builder: (context) {
                                              return Dialog(
                                                insetPadding:
                                                    EdgeInsets.all(18),
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.only(
                                                    topLeft:
                                                        Radius.circular(60),
                                                  ),
                                                ),
                                                child: Container(
                                                  height: Get.height * .4,
                                                  width: Get.width * .9,
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                      8.0,
                                                    ),
                                                    child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceEvenly,
                                                      children: [
                                                        Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .end,
                                                          children: [
                                                            MaterialButton(
                                                              onPressed: () {
                                                                Get.back();
                                                              },
                                                              child:
                                                                  Image.asset(
                                                                AssetHelper
                                                                    .Cancel,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        Text(
                                                          'UPDATE INFORMATION',
                                                          style: MyTheme
                                                              .regularTextStyle(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  textSize:
                                                                      Get.height *
                                                                          .020,
                                                                  color: MyTheme
                                                                      .darkblue),
                                                        ),
                                                        SizedBox(height: Get.height*.02,),
                                                        Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  left:
                                                                      Get.width *
                                                                          .08,
                                                                  right:
                                                                      Get.width *
                                                                          .08),
                                                          child: CustomTextFormField(
                                                              textsize:
                                                                  Get.height *
                                                                      .018,
                                                              HintText:
                                                                  'USERNAME'),
                                                        ),
                                                        Padding(
                                                            padding: EdgeInsets.only(
                                                                left:
                                                                    Get.width *
                                                                        .08,
                                                                right:
                                                                    Get.width *
                                                                        .08),
                                                            child: CustomTextFormField(
                                                                textsize:
                                                                    Get.height *
                                                                        .018,
                                                                HintText:
                                                                    "MOBILE NUMBER")),
                                                        SizedBox(
                                                          height:
                                                              Get.height * .02,
                                                        ),
                                                        CustomButton(
                                                           height: Get.height*.068,
                                                            width:
                                                                Get.width * .45,
                                                            buttonText:
                                                                "Update",
                                                            onpressed: () {}),
                                                        SizedBox(
                                                          height:
                                                              Get.height * .03,
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              );
                                            });
                                      },
                                      child: Image.asset(
                                        AssetHelper.Edit,
                                        scale: .9,
                                      ))
                                ],
                              ),
                            ),
                            content(field: "Name", deatail: 'Amar'),
                            content(field: "Gender", deatail: 'Male'),
                            content(
                                field: "Date Of Birth", deatail: '20/11/1999'),
                            content(
                                field: "Mobile Number", deatail: '7012913930'),
                            content(
                                field: "Email", deatail: 'amarshamk@gmail.com'),
                          ],
                        )),
                    DetailsCard(
                        heading: "SALES PERFORMANCE",
                        wrap: Wrap(
                          spacing: 8,
                          direction: Axis.vertical,
                          children: [
                            content(field: "Number Of Sales", deatail: ''),
                            content(field: "Deal Closed", deatail: ''),
                            content(field: "Product Sold", deatail: ''),
                          ],
                        )),
                    DetailsCard(
                        heading: "Territory Information",
                        wrap: Wrap(
                          spacing: 8,
                          direction: Axis.vertical,
                          children: [
                            content(field: 'Territory Name', deatail: ''),
                          ],
                        )),
                    SizedBox(
                      height: Get.height * .2,
                    )
                  ],
                ),
              ),
            ),
          ),

          /// Profile picture Section
          Positioned(
            top: Get.height * .09,
            left: 10,
            right: 10,
            child: Container(
              decoration: BoxDecoration(shape: BoxShape.circle, boxShadow: [
                BoxShadow(
                  offset: Offset.zero,
                  color: Colors.black26,
                  blurStyle: BlurStyle.outer,
                  blurRadius: 20,
                )
              ]),
              child: CircleAvatar(
                radius: Get.height * .075,
                backgroundColor: MyTheme.white,
                child: CircleAvatar(
                  radius: Get.height * .070,
                  backgroundColor: MyTheme.white,
                  child: ClipOval(
                    child: Image.asset(
                      AssetHelper.Dp,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
