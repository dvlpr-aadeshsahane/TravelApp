import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:travel/consts/assetsurl.dart';
import 'package:travel/consts/color_pallete.dart';
import 'package:travel/consts/typography.dart';
import 'package:travel/main.dart';

class LandingScreenData {
  String? img;
  String? title;
  String? subTitle;

  LandingScreenData({this.img, this.title, this.subTitle});
}

List<LandingScreenData> pages = [
  LandingScreenData(
      img: Assetsurl.iglanding1,
      title: "Find Cheaper\nFlights Instantly",
      subTitle:
          "Compare prices from all flight booking\nservices in one place. Book the best deal\neffortlessly!"),
  LandingScreenData(
      img: Assetsurl.iglanding2,
      title: "Let AI Plan Your\nDream Trip",
      subTitle:
          "Let our smart AI create personalized itineraries\nbased on your preferences. From destinations\nto activities, plan your ideal trip in minutes\nwithout the hassle."),
  LandingScreenData(
      img: Assetsurl.iglanding3,
      title: "Discover Exciting\nHoliday Packages",
      subTitle:
          "Book personalized holiday packages\ntailored to your travel style."),
];

class Landingscreen extends StatelessWidget {
  Landingscreen({super.key});
  PageController pageController = PageController();

  int _currentPage = 0;
  nextPage(context) {
    if (_currentPage < 2) {
      pageController.nextPage(
          duration: Duration(milliseconds: 600), curve: Curves.ease);
    } else {
      GoRouter.of(context).goNamed(Routes.selectlanguage.name);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Column(
          children: [
            Expanded(
              child: Stack(
                children: [
                  PageView(
                    onPageChanged: (index) {
                      _currentPage = index;
                    },
                    physics: NeverScrollableScrollPhysics(),
                    controller: pageController,
                    scrollDirection: Axis.horizontal,
                    children: List.generate(
                      pages.length,
                      (index) => landingMethod(
                        pages[index],
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 80,
                    left: 25,
                    child: SmoothPageIndicator(
                      controller: pageController,
                      count: 3,
                      effect: ExpandingDotsEffect(
                          dotColor: Colors.white,
                          activeDotColor: Appcolors.primaryColor,
                          dotHeight: 5),
                    ),
                  ),
                  Positioned(
                    right: 25,
                    bottom: 60,
                    child: IconButton.filled(
                      style: ButtonStyle(
                          backgroundColor:
                              WidgetStatePropertyAll(Colors.white)),
                      onPressed: () {
                        nextPage(context);
                      },
                      icon: Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.grey,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container landingMethod(LandingScreenData data) {
    return Container(
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover, image: AssetImage(data.img!))),
        child: Padding(
          padding: const EdgeInsets.only(left: 24, right: 20, top: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                  alignment: Alignment.topRight,
                  child: TextButton(
                    onPressed: () {
                      // GoRouter.of(context).goNamed(Routes.selectlanguage.name);
                    },
                    child: Text(
                      "skip>",
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: Typo.manropeRegular,
                          fontSize: 14.sp),
                    ),
                  )),
              SizedBox(
                height: 420.h,
              ),
              Text(
                data.title!,
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: Typo.manropeBold,
                    fontSize: 28.sp),
              ),
              SizedBox(
                height: 19.h,
              ),
              Text(
                data.subTitle!,
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: Typo.manropeRegular,
                    fontSize: 16.sp),
              ),
            ],
          ),
        ));
  }
}
