import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:travel/consts/assetsurl.dart';
import 'package:travel/consts/color_pallete.dart';
import 'package:travel/consts/typography.dart';
import 'package:travel/main.dart';

class Category {
  String? icon;
  String? title;
  Category({required this.icon, this.title});
}

List<Category> categoryList1 = [
  Category(icon: Assetsurl.icplane, title: "Flight"),
  Category(icon: Assetsurl.ichotels, title: "Hotels"),
  Category(icon: Assetsurl.icPackages, title: "Packages"),
];

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF9F9F9),
      body: Container(
        padding: EdgeInsets.only(top: 20.h, left: 30.w, right: 30.w),
        child: Column(
          children: [
            Row(
              // crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "Hello,",
                  style: TextStyle(
                    fontSize: 14.sp,
                  ),
                ),
                Text(
                  " Satya!",
                  style: TextStyle(fontSize: 18.sp),
                ),
                SizedBox(
                  width: 145.w,
                ),
                SvgPicture.asset(Assetsurl.icIndianFlag),
                SizedBox(
                  width: 5.w,
                ),
                Text(
                  "INR",
                  style: TextStyle(
                      fontFamily: Typo.manropeSemiBold,
                      fontSize: 14.sp,
                      color: Color(0xff5A5A5A)),
                ),
                SizedBox(
                  width: 27.w,
                ),
                CircleAvatar(
                  backgroundColor: Color(0xffF2F3F5),
                  radius: 19.r,
                  child: Icon(
                    Icons.person,
                    size: 24,
                    color: Appcolors.primaryColor,
                  ),
                ),
              ],
            ),
            SizedBox(height: 14.h),
            TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                hintText: "Search here...",
                hintStyle: TextStyle(
                    fontFamily: Typo.manropeRegular,
                    fontSize: 12.sp,
                    color: Color(0xff6C757D)),
                suffixIcon: Icon(
                  Icons.search,
                  color: Color(0xff6C757D),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.r),
                  borderSide: BorderSide(
                    color: Colors.white,
                    width: 1.0,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.r),
                  borderSide: BorderSide(
                    color: Colors.white,
                    width: 1.5,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 22.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(
                categoryList1.length,
                (index) => Container(
                  height: 85.h,
                  width: 103,
                  decoration: BoxDecoration(
                      color: Color(0xffF2F3F5),
                      borderRadius: BorderRadius.circular(4.r)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(categoryList1[index].icon!),
                      SizedBox(
                        height: 5.h,
                      ),
                      Text(categoryList1[index].title!)
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
