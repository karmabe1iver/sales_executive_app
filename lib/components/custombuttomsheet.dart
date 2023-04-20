import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../app/modules/Dashboard/controllers/dashboard_controller.dart';
import '../utils/my_theme.dart';

class CustomButtomSheet extends StatelessWidget {
  const CustomButtomSheet({Key? key}) : super(key: key);

  get contoller => DashboardController();

  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => DashboardController());
    return BottomSheet(
        onClosing: () {
          Get.back();
        },
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        )),
        builder: (BuildContext) {
          Get.lazyPut(() => DashboardController());
          return SizedBox(
            height: Get.height * .2,
            child: Padding(
              padding: EdgeInsets.only(
                  left: Get.width * .06, right: Get.width * .06),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Profile Photo",
                        style: MyTheme.regularTextStyle(
                          color: MyTheme.brown,
                          textSize: 20,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      Icon(
                        Icons.delete,
                        color: Colors.grey,
                      )
                    ],
                  ),
                  Wrap(
                    runSpacing: 30,
                    spacing: 30,
                    children: [
                      Column(
                        children: [
                          CircleAvatar(
                            backgroundColor: MyTheme.darkblue,
                            child: IconButton(
                                onPressed: () {
                                  //getfromCamera;
                                  contoller.getImageCam();
                                  Get.back();
                                },
                                icon: Icon(Icons.camera_alt_rounded)),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Camera",
                            style: MyTheme.regularTextStyle(
                              textSize: 12,
                            ),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          CircleAvatar(
                            backgroundColor: MyTheme.darkblue,
                            child: IconButton(
                                onPressed: () {
                                  //getfromGallery;
                                  contoller.getImage();
                                  Get.back();
                                },
                                icon: Icon(Icons.photo)),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Gallery",
                            style: MyTheme.regularTextStyle(
                              textSize: 12,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        });
  }
}
