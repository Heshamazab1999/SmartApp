import 'package:education_app/components/custom_text_field.dart';
import 'package:education_app/components/login_button.dart';
import 'package:education_app/components/rich_text.dart';
import 'package:education_app/components/rich_text_signup.dart';
import 'package:education_app/constants.dart';
import 'package:education_app/screens/login_screen/login_screen.dart';
import 'package:education_app/screens/signup_screen/controller/signup_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _controller = Get.put(SignupController());
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
                  child: Text("Welcome!",
                      style: TextStyle(
                          fontSize: 28.sp,
                          fontFamily: "Raleway",
                          fontWeight: FontWeight.w500,
                          color: K.blackColor)),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 16, left: 16),
                  child: Text("Sign up to continue",
                      style: TextStyle(
                          fontSize: 18.sp,
                          fontFamily: "Raleway",
                          fontWeight: FontWeight.w500,
                          color: K.greyColor)),
                ),
                CustomTextField(
                  label: "Full Name",
                  type: TextInputType.emailAddress,
                  icon: Icons.person_outline_outlined,
                  obSecure: false,
                  onchange: (v) {
                    print(v);
                  },
                ),
                CustomTextField(
                  label: "Academic year",
                  type: TextInputType.emailAddress,
                  icon: Icons.person_outline_outlined,
                  obSecure: false,
                  onchange: (v) {
                    print(v);
                  },
                ),
                CustomTextField(
                  label: "City",
                  type: TextInputType.emailAddress,
                  icon: Icons.add_location,
                  obSecure: false,
                  onchange: (v) {
                    print(v);
                  },
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
                Row(
                  children: [
                    Obx(() => Checkbox(
                          value: _controller.check,
                          onChanged: (v) {
                            _controller.checkFun(v!);
                          },
                          activeColor: K.secondaryColor,
                          checkColor: K.whiteColor,
                        )),
                    const FixedRichTextSignup()
                  ],
                ),
                Center(
                  child: Padding(
                    padding: EdgeInsets.only(top: 20.h),
                    child: LoginButton(
                      onTap: () {},
                      label: "Create account",
                    ),
                  ),
                ),
                SizedBox(height: 20.h),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: FixedRichText(
                    onTap: () {
                      Get.to(() => const LoginScreen(),
                          transition: Transition.zoom,
                          duration: const Duration(milliseconds: 500));
                    },
                    leftLabel: "Don't have an account? ",
                    rightLabel: "Login",
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
