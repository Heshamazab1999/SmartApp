import 'package:education_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomRichTextComment extends StatelessWidget {
  final String? leftLabel;
  final String? middleLabel;
  final String? rightLabel;

  const CustomRichTextComment(
      {Key? key, this.leftLabel, this.middleLabel, this.rightLabel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
        text: TextSpan(
            text: "$leftLabel . ",
            style: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.w500,
                fontFamily: "Raleway-Regular",
                color: K.secondaryColor),
            children: [
          TextSpan(
            text: "$middleLabel . ",
            style: TextStyle(
                fontSize: 14.sp,
                fontFamily: "Raleway-Regular",
                color: K.blackColor),
          ),
          TextSpan(
            text: rightLabel,
            style: TextStyle(
                fontSize: 14.sp,
                fontFamily: "Raleway-Regular",
                color: K.blackColor),
          )
        ]));
  }
}
