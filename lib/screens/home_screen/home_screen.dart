import 'package:education_app/components/search_text_field.dart';
import 'package:education_app/constants.dart';
import 'package:education_app/routes/app_route.dart';
import 'package:education_app/screens/home_screen/controller/home_screen_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_grid_view.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_tile.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _controller = Get.put(HomeScreenController());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: K.whiteColor,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            clipBehavior: Clip.antiAlias,
            width: 32.w,
            height: 32.h,
            child:
                SvgPicture.asset("assets/images/image1.svg", fit: BoxFit.cover),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: K.whiteColor),
          ),
        ),
        title: const Text("Hi, Loaa!",
            style: TextStyle(
                fontSize: 15, color: K.secondaryColor, fontFamily: "Raleway")),
        actions: [
          const Icon(Icons.notifications, color: K.blackColor),
          SizedBox(width: 16.w),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(16),
              child: Text("Find your course\nhere!",
                  style: TextStyle(
                      color: K.blackColor,
                      fontSize: 25,
                      fontFamily: "Raleway")),
            ),
            SearchTextField(
              onchange: (v) {},
            ),
            Padding(
              padding: EdgeInsets.only(left: 16.w, top: 32.h, bottom: 16.h),
              child: Text(
                "My Courses",
                style: TextStyle(
                    fontSize: 20.sp,
                    fontFamily: "Raleway",
                    color: K.blackColor),
              ),
            ),
            StaggeredGridView.countBuilder(
                staggeredTileBuilder: (int index) =>
                    StaggeredTile.count(2, index.isEven ? 2.4 : 2.28),
                crossAxisCount: 4,
                shrinkWrap: true,
                physics: const ClampingScrollPhysics(),
                itemCount: 8,
                itemBuilder: (BuildContext context, int index) => Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                        onTap: () {
                          Get.toNamed(AppRoute.detailsScreen,);
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              color: K.blackColor,
                              borderRadius: BorderRadius.circular(15)),
                        ),
                      ),
                    )),
          ],
        ),
      ),
    );
  }
}
