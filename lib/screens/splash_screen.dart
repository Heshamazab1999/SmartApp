import 'package:education_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: K.mainColor,
        height: K.height,
        width: K.width,
        child: Center(
          child: SvgPicture.asset(
            "assets/images/image4.svg"
          ),
        ),
      ),
    );
  }
}
