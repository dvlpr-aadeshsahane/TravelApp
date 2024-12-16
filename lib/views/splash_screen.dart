import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gif/gif.dart';
import 'package:go_router/go_router.dart';
import 'package:travel/consts/assetsurl.dart';
import 'package:travel/consts/color_pallete.dart';
import 'package:travel/main.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  late GifController _gifController;

  changeScreen(context) {
    Future.delayed(Duration(seconds: 3), () {
      GoRouter.of(context).goNamed(Routes.landing.name);
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _gifController = GifController(vsync: this);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _gifController.repeat(
        min: 0,
        max: 1,
        period: Duration(seconds: 3),
      );
    });
  }

  @override
  void dispose() {
    _gifController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    changeScreen(context);
    return Scaffold(
      body: Container(
        color: Appcolors.whiteTextColor,
        height: double.infinity,
        width: double.infinity,
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
              height: 45.h,
            ),
            Gif(
                height: 337.h,
                width: 345.w,
                controller: _gifController,
                image: AssetImage(Assetsurl.igMap))
          ],
        ),
      ),
    );
  }
}
