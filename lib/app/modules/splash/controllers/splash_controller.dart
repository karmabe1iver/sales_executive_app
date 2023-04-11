import 'dart:async';

import 'package:get/get.dart';
import 'package:sales_executive_app/app/routes/app_pages.dart';

class SplashController extends GetxController {

  @override
  void onInit() {
    super.onInit();
    Timer(Duration(milliseconds: 2000), () => Get.offNamed(Routes.HOME));

  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }


}
