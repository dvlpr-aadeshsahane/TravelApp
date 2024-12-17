import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:travel/consts/color_pallete.dart';
import 'package:travel/consts/typography.dart';
import 'package:travel/main.dart';

class Selectlanguage extends StatefulWidget {
  Selectlanguage({super.key});

  @override
  State<Selectlanguage> createState() => _SelectlanguageState();
}

class _SelectlanguageState extends State<Selectlanguage> {
  List languages = [
    "English",
    "Hindi",
    "Arabic",
    "Telugu",
    "Malayalam",
    "Chinese",
    "Japanese"
  ];

  int selectedTabIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 27.h, left: 25, right: 87),
        child: Column(
          children: [
            Align(
              alignment: Alignment.center,
              child: Text(
                "Choose Language",
                style: TextStyle(
                    fontSize: 16.sp, fontFamily: Typo.manropeSemiBold),
              ),
            ),
            SizedBox(height: 48.h),
            Wrap(
              runSpacing: 30,
              spacing: 20,
              children: List.generate(
                languages.length,
                (index) => GestureDetector(
                  onTap: () {
                    selectedTabIndex = index;
                    setState(() {
                      Future.delayed(Duration(seconds: 1), () {
                        GoRouter.of(context).goNamed(Routes.login.name);
                      });
                    });
                  },
                  child: Container(
                    padding:
                        EdgeInsets.only(right: 10, left: 10, top: 3, bottom: 3),
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: index == selectedTabIndex
                                ? Appcolors.primaryColor
                                : Appcolors.greyTextColor),
                        borderRadius: BorderRadius.circular(6)),
                    child: Text(
                      languages[index],
                      style: TextStyle(
                          fontFamily: Typo.manropeMedium,
                          fontSize: 14.sp,
                          color: index == selectedTabIndex
                              ? Appcolors.primaryColor
                              : Appcolors.greyTextColor),
                    ),
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
