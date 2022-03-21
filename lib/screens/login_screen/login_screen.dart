import 'package:education_app/components/custom_text_field.dart';
import 'package:education_app/components/login_button.dart';
import 'package:education_app/components/rich_text.dart';
import 'package:education_app/constants.dart';
import 'package:education_app/screens/home_screen/home_screen.dart';
import 'package:education_app/screens/signup_screen/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: K.mainColor,
      body: Padding(
        padding: EdgeInsets.only(top: 135.h, right: 0, left: 0, bottom: 0),
        child: Container(
          height: K.height,
          width: K.width,
          decoration: const BoxDecoration(
              color: K.whiteColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25),
                topRight: Radius.circular(25),
              )),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 24, left: 16),
                  child: Text("Welcome Back",
                      style: TextStyle(
                          fontSize: 28.sp,
                          fontFamily: "Raleway",
                          fontWeight: FontWeight.w500,
                          color: K.blackColor)),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 16, left: 16),
                  child: Text("Sign in to continue",

                      style: TextStyle(
                          fontFamily: "Raleway",
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w500,
                          color: K.greyColor)),
                ),
                CustomTextField(
                  label: "Email",
                  type: TextInputType.emailAddress,
                  icon: Icons.email_outlined,
                  obSecure: false,
                  onchange: (v) {
                    print(v);
                  },
                ),
                CustomTextField(
                  label: "Password",
                  type: TextInputType.phone,
                  icon: Icons.lock_outline_rounded,
                  obSecure: true,
                  onchange: (v) {
                    print(v);
                  },
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 16, right: 16),
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: GestureDetector(
                      onTap: () {},
                      child: Text("Forgot Your Password?",
                          style: TextStyle(
                              fontSize: 14.sp,
                              fontFamily: "Raleway",
                              fontWeight: FontWeight.w500,
                              color: K.greyColor)),
                    ),
                  ),
                ),
                Center(
                  child: Padding(
                    padding: EdgeInsets.only(top: 40.h),
                    child: LoginButton(
                      onTap: () {
                        Get.to(() => const HomeScreen(),
                            transition: Transition.zoom,
                            duration: const Duration(milliseconds: 500));
                      },
                      label: "Login",
                    ),
                  ),
                ),
                SizedBox(height: 252.h),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: FixedRichText(
                    onTap: () {
                      Get.to(() => const SignUpScreen(),
                          transition: Transition.zoom,
                          duration: const Duration(milliseconds: 500));
                    },
                    leftLabel: "Don't have an account? ",
                    rightLabel: "SignUp",
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
