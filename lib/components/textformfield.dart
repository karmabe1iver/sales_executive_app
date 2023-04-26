import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../utils/my_theme.dart';

class CustomTextFormField extends StatelessWidget {
  String HintText;
  late final textsize;
  CustomTextFormField({Key? key, required this.HintText,this.textsize}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
          hintText: HintText,
          focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: MyTheme.blue))),
      style: MyTheme.regularTextStyle(
          textSize:textsize==null?Get.height*.018:textsize ,
          color: MyTheme.brown),
      cursorColor: MyTheme.blue,
    );
  }
}
