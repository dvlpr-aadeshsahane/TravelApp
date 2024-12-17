import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:travel/consts/assetsurl.dart';
import 'package:travel/consts/color_pallete.dart';
import 'package:travel/consts/typography.dart';
import 'package:travel/main.dart';

class Loginscreen extends StatelessWidget {
  const Loginscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xffF8F9FA),
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                SvgPicture.asset(Assetsurl.icLogoMain),
                Positioned(
                  left: 47,
                  bottom: 37,
                  child: Image.asset(
                    Assetsurl.igLogo2,
                    scale: 5,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 43.h,
            ),
            Text(
              "Welcome back! Login to Your Account..",
              style:
                  TextStyle(fontFamily: Typo.manropeRegular, fontSize: 28.sp),
            ),
            SizedBox(height: 25.h),
            TextField(
              decoration: InputDecoration(
                prefixIcon: SizedBox(
                  width: 24, // Set desired width
                  height: 24, // Set desired height
                  child: SvgPicture.asset(
                    Assetsurl.icIndianFlag,
                    fit: BoxFit.scaleDown, // Scales the icon properly
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                    color: Colors.grey,
                    width: 1.0,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                    color: Colors.grey,
                    width: 1.5,
                  ),
                ),
                hintText: '+91 Enter your Mobile Number',
                hintStyle: TextStyle(color: Colors.grey),
              ),
            ),
            SizedBox(
              height: 35.h,
            ),
            SizedBox(
              height: 45.h,
              width: double.infinity,
              child: FilledButton(
                style: ButtonStyle(
                    shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.r))),
                    backgroundColor:
                        WidgetStatePropertyAll(Appcolors.primaryColor)),
                onPressed: () {
                  GoRouter.of(context).goNamed(Routes.otp.name);
                },
                child: Text(
                  "Send OTP",
                  style: TextStyle(
                      fontFamily: Typo.manropeRegular, fontSize: 16.sp),
                ),
              ),
            ),
            SizedBox(height: 35.h),
            Row(
              children: [
                Expanded(child: Divider()),
                SizedBox(width: 11.w),
                Text(
                  "Or Login with",
                  style: TextStyle(
                      fontFamily: Typo.manropeRegular, fontSize: 14.sp),
                ),
                SizedBox(width: 11.w),
                Expanded(child: Divider()),
              ],
            ),
            SizedBox(height: 20.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 70.h,
                  width: 105.w,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Color(0xffE8ECF4)),
                      borderRadius: BorderRadius.circular(8.r)),
                  child: SvgPicture.asset(
                    Assetsurl.icFacebook,
                    height: 24.h,
                    fit: BoxFit.scaleDown,
                  ),
                ),
                Container(
                  height: 70.h,
                  width: 105.w,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Color(0xffE8ECF4)),
                      borderRadius: BorderRadius.circular(8.r)),
                  child: SvgPicture.asset(
                    Assetsurl.icGoogle,
                    height: 24.h,
                    fit: BoxFit.scaleDown,
                  ),
                ),
                Container(
                  height: 70.h,
                  width: 105.w,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Color(0xffE8ECF4)),
                      borderRadius: BorderRadius.circular(8.r)),
                  child: SvgPicture.asset(
                    Assetsurl.icApple,
                    height: 24.h,
                    fit: BoxFit.scaleDown,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
