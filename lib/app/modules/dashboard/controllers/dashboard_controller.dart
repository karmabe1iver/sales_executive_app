import 'dart:io';

import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class DashboardController extends GetxController {
  Future getImage() async {
    try {
       var imagepicked = await ImagePicker();
      final XFile? pickedFile = await imagepicked.pickImage(
        source: ImageSource.gallery,
        imageQuality: 100,
      );
      File file = File(pickedFile!.path);
      //image = await ImagePicker().pickImage(source: ImageSource.gallery);
      // XFile?  image1 = await imagepicked.pickImage(source: ImageSource.camera);

    //   image.value = file;
    //   ProfileList.add(ProfileModel(
    //     profilePic: image.value!,
    //   ));
    //   print('p: ${ProfileList.length}');
    //   print('p: ${ProfileList.last.profilePic}');
    //   if (file != null) {
    //     status.value = true;
    //   }
    } catch (e) {
      //Image.asset(AssetHelper.profileIMAGE);
    }
    // print('Image Path $image');
  }

  Future getImageCam() async {
    var imagepicked = await ImagePicker();
    final XFile? pickedFile = await imagepicked.pickImage(
      source: ImageSource.camera,
      imageQuality: 100,
      preferredCameraDevice: CameraDevice.rear,
    );
    File file = File(pickedFile!.path);
    //image = await ImagePicker().pickImage(source: ImageSource.gallery);
    // XFile?  image1 = await imagepicked.pickImage(source: ImageSource.camera);

    // image.value = file;
    // ProfileList.add(ProfileModel(
    //   profilePic: image.value!,
    // ));
    // if (file != null) {
    //   status.value = true;
    //   print(ProfileList.length);
    // }
    // print('Image Path $image');
  }


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


}
