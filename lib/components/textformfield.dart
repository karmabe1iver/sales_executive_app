import 'package:flutter/material.dart';

import '../utils/my_theme.dart';

class CustomTextFormField extends StatelessWidget {
  String HintText;
  CustomTextFormField({Key? key, required this.HintText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
          hintText: HintText,
          focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: MyTheme.blue))),
      style: MyTheme.regularTextStyle(color: MyTheme.brown),
      cursorColor: MyTheme.blue,
    );
  }
}
