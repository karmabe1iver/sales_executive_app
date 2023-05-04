import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sales_executive_app/utils/my_theme.dart';

class DetailsCard extends StatelessWidget {
  final heading;
  late Widget wrap;
  late final TextStyle;
  final Alignment;
  final Dcolor;

  DetailsCard(
      {Key? key,
      required this.heading,
      required this.wrap,
      this.TextStyle,
      this.Alignment,
      this.Dcolor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(18.0),
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(60)),
              boxShadow: [
                BoxShadow(
                  offset: Offset.zero,
                  color: Colors.grey.shade300,
                  blurStyle: BlurStyle.outer,
                  blurRadius: 10,
                ),
              ],
              color: Colors.white),
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              //direction: Axis.vertical,
              children: [
                Row(
                  mainAxisAlignment:
                      Alignment == null ? MainAxisAlignment.center : Alignment,
                  children: [
                    Text(heading,
                        style: TextStyle == null
                            ? MyTheme.regularTextStyle(
                                textSize: Get.height * .022,
                                fontWeight: FontWeight.w800,
                                color: MyTheme.darkblue)
                            : TextStyle),
                  ],
                ),
                SizedBox(
                  height: Get.height * .018,
                ),
                wrap
              ],
            ),
          ),
        ));
  }
}

Widget content({field, deatail}) {
  return RichText(
      text: TextSpan(text: '$field    :', style: _textStyle(), children: [
    TextSpan(
      text: " $deatail",
      style:
      _style(),
    )
  ]));
}

TextStyle _textStyle() {
  return MyTheme.regularTextStyle(
      fontWeight: FontWeight.w400,
      textSize: Get.height * .016,
      color: Colors.black);
}

TextStyle _style() {
  return MyTheme.regularTextStyle(
      fontWeight: FontWeight.w100,
      textSize: Get.height * .014,
      color: Colors.black);
}
