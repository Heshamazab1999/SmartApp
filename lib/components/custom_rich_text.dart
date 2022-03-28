import 'package:education_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomRichText extends StatelessWidget {
  final String? leftLabel;
  final String? rightLabel;

  const CustomRichText({Key? key, this.leftLabel, this.rightLabel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
        text: TextSpan(
            text: "$leftLabel : ",
            style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.w500,
                fontFamily: "Raleway-Regular",
                color: K.blackColor),
            children: [
          TextSpan(
            text: rightLabel,
            style: TextStyle(
                fontSize: 16.sp,
                fontFamily: "Raleway-Regular",
                color: K.blackColor),
          )
        ]));
  }
}
