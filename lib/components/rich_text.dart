import 'package:education_app/constants.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FixedRichText extends StatelessWidget {
  final String? leftLabel;
  final String? rightLabel;
  final Function()? onTap;

  const FixedRichText(
      {Key? key, this.onTap, this.leftLabel, this.rightLabel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
        text: TextSpan(
            text: leftLabel,
            style: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.w500,
                fontFamily: "Raleway",
                color: K.greyColor),
            children: [
          TextSpan(
              text: rightLabel,
              style:  TextStyle(fontSize: 14.sp,  fontFamily: "Raleway",color: K.secondaryColor),
              recognizer: TapGestureRecognizer()..onTap = onTap)
        ]));
  }
}
