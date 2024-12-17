import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:pinput/pinput.dart';
import 'package:travel/consts/color_pallete.dart';
import 'package:travel/consts/typography.dart';
import 'package:travel/main.dart';

class Otpscreen extends StatelessWidget {
  const Otpscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(vertical: 85.h, horizontal: 24.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () {
                context.pop();
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Appcolors.whiteTextColor,
                  borderRadius: BorderRadius.circular(12.r),
                  border: Border.all(
                    color: Color(0xffE0E0E0),
                  ),
                ),
                height: 41.h,
                width: 41.h,
                child: Icon(
                  size: 24,
                  Icons.arrow_back_ios_new,
                  color: Color(0xff989390),
                ),
              ),
            ),
            SizedBox(height: 75.h),
            Text(
              "OTP Verification",
              style:
                  TextStyle(fontFamily: Typo.manropeSemiBold, fontSize: 28.sp),
            ),
            SizedBox(height: 18.h),
            Text(
              "Enter the verification code we just sent on your phone number.",
              style: TextStyle(
                  fontFamily: Typo.manropeRegular,
                  fontSize: 16.sp,
                  color: Color(0xff5A5A5A)),
            ),
            SizedBox(
              height: 20.h,
            ),
            Pinput(
              autofocus: true,
              length: 4,
              defaultPinTheme: PinTheme(
                margin: EdgeInsets.symmetric(horizontal: 12.w),
                textStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.bold),
                height: 60.h,
                width: 70.w,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  border: Border.all(color: Color(0xffE0E0E0)),
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(8.r),
                ),
              ),
              focusedPinTheme: PinTheme(
                height: 60.h,
                width: 70.w,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.green),
                  borderRadius: BorderRadius.circular(8.r),
                ),
              ),
              submittedPinTheme: PinTheme(
                textStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.bold),
                height: 60.h,
                width: 70.w,
                margin:
                    EdgeInsets.symmetric(horizontal: 12.w), // Prevents shifting
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.green),
                  borderRadius: BorderRadius.circular(8.r),
                ),
              ),
            ),
            SizedBox(
              height: 18.h,
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                textAlign: TextAlign.right,
                "Resend OTP",
                style: TextStyle(
                    color: Color(0xff5A5A5A),
                    fontFamily: Typo.manropeRegular,
                    fontSize: 14.sp),
              ),
            ),
            SizedBox(
              height: 18.h,
            ),
            SizedBox(
              height: 45.h,
              width: 345.w,
              child: FilledButton(
                style: ButtonStyle(
                    shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.r))),
                    backgroundColor:
                        WidgetStatePropertyAll(Appcolors.primaryColor)),
                onPressed: () {
                  GoRouter.of(context).goNamed(Routes.home.name);
                },
                child: Text(
                  "Submit",
                  style: TextStyle(
                      fontFamily: Typo.manropeRegular, fontSize: 16.sp),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
