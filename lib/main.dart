import 'package:education_app/routes/app_route.dart';
import 'package:education_app/routes/app_screens.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(375, 812),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: () => GetMaterialApp(
              debugShowCheckedModeBanner: false,
              initialRoute: AppRoute.onBoardingScreen,
              getPages: AppScreens.screens,
            ));
  }
}
