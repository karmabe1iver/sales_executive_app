import 'package:get/get.dart';

class ShopController extends GetxController {
  //TODO: Implement AddShopController
  Rx<bool> visibleSts=false.obs;
  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
