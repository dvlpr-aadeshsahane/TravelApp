import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:travel/consts/assetsurl.dart';
import 'package:travel/consts/color_pallete.dart';
import 'package:travel/consts/typography.dart';

class Landingscreen extends StatelessWidget {
  Landingscreen({super.key});
  PageController pageController = PageController(initialPage: 0);

  int _currentPage = 0;

  void _nextPage() {
    if (_currentPage < 2) {
      pageController.animateToPage(
        _currentPage += 1,
        duration: Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    }
    //   if (_currentPage == 2) {
    //     GoRouter.of(context).goNamed(Routes.login.name);
    //   }
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
                      physics: NeverScrollableScrollPhysics(),
                      controller: pageController,
                      scrollDirection: Axis.horizontal,
                      children: [
                        landingMethod(img: Assetsurl.iglanding1),
                        landingMethod(img: Assetsurl.iglanding2),
                        landingMethod(img: Assetsurl.iglanding3),
                      ]),
                  Positioned(
                    bottom: 80,
                    left: 25,
                    child: SmoothPageIndicator(
                      controller: pageController,
                      count: 3,
                      effect: ExpandingDotsEffect(
                          dotColor: Colors.grey,
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
                          _nextPage();
                        },
                        icon: Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.grey,
                        )),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container landingMethod({img}) {
    return Container(
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(fit: BoxFit.cover, image: AssetImage(img))),
        child: Padding(
          padding: const EdgeInsets.only(left: 24, right: 20, top: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                  alignment: Alignment.topRight,
                  child: TextButton(
                    onPressed: () {},
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
                "Find Cheaper \nFlights Instantly",
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: Typo.manropeBold,
                    fontSize: 28.sp),
              ),
              SizedBox(
                height: 19.h,
              ),
              Text(
                "Compare prices from all flight booking\nservices in one place. Book the best deal\neffortlessly!",
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
