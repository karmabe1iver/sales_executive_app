import 'package:flutter/material.dart';

class MyTheme {
  static Color primaryColor = const Color.fromRGBO(4, 9, 113, 1);
  static Color blue = const Color.fromRGBO(78, 82, 161, 1);
  static Color darkblue = const Color.fromRGBO(30, 49, 157, 1);
  static Color tan = const Color.fromRGBO(171, 167, 167, 1);
  static Color brown = const Color.fromRGBO(61, 59, 59, 1);
  static Color white = const Color.fromRGBO(255, 255, 255, 1);

  static TextStyle regularTextStyle(
      {Color? color,
      double? textSize,
      FontWeight? fontWeight,
      double? letterSpacing, }) {
    return TextStyle(
      fontFamily: 'Poppins',
      color: color ?? Colors.black,
      fontSize: textSize ?? 15,
      fontWeight: fontWeight ?? FontWeight.normal,
      letterSpacing: letterSpacing,
    );
  }
   static BoxShadow regularBoxShadow(){
     return BoxShadow(
       offset: Offset.zero,
       color: Colors.black26,
       blurStyle: BlurStyle.outer,
       blurRadius: 10,
     );

  }
  static BoxDecoration regularBoxDecoration(){
    return  BoxDecoration(borderRadius:BorderRadius.only(topLeft: Radius.circular(60)),
        boxShadow: [
          BoxShadow(
            offset: Offset.zero,
            color: Colors.grey.shade300,
            blurStyle: BlurStyle.outer,
            blurRadius: 10,
          )
        ]);
  }
}
