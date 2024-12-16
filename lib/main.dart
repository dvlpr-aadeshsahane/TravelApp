import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:travel/views/landingScreen.dart';
import 'package:travel/views/splash_screen.dart';

void main() {
  runApp(Travel());
}

enum Routes { splash, landing }

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
