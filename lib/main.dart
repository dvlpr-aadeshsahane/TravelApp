import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:travel/views/homeScreen.dart';
import 'package:travel/views/landingScreen.dart';
import 'package:travel/views/loginscreen.dart';
import 'package:travel/views/otpScreen.dart';

import 'package:travel/views/selectlanguage.dart';
import 'package:travel/views/splash_screen.dart';

void main() {
  runApp(Travel());
}

enum Routes { splash, landing, selectlanguage, login, otp, home }

class Travel extends StatelessWidget {
  Travel({super.key});

  GoRouter router = GoRouter(routes: [
    GoRoute(
      path: "/",
      name: Routes.splash.name,
      builder: (context, state) => SplashScreen(),
    ),
    GoRoute(
      path: "/landing",
      name: Routes.landing.name,
      builder: (context, state) => Landingscreen(),
    ),
    GoRoute(
      path: "/language",
      name: Routes.selectlanguage.name,
      builder: (context, state) => Selectlanguage(),
    ),
    GoRoute(
        path: "/login",
        name: Routes.login.name,
        builder: (context, state) => Loginscreen(),
        routes: [
          GoRoute(
            path: "otpScreen",
            name: Routes.otp.name,
            builder: (context, state) => Otpscreen(),
          )
        ]),
    GoRoute(
      path: "/home",
      name: Routes.home.name,
      builder: (context, state) => Homescreen(),
    )
  ]);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(393, 852),
        child: MaterialApp.router(
          routerConfig: router,
          debugShowCheckedModeBanner: false,
        ));
  }
}
