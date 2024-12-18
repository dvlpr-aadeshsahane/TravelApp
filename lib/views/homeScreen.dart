import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:travel/consts/assetsurl.dart';
import 'package:travel/consts/color_pallete.dart';
import 'package:travel/consts/typography.dart';
import 'package:travel/main.dart';
import 'package:velocity_x/velocity_x.dart';

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

List<Category> categoryList2 = [
  Category(icon: Assetsurl.icRentalCar, title: "Rental Cars & Bike"),
  Category(icon: Assetsurl.icTrain, title: "Train & Bus"),
  Category(icon: Assetsurl.icDiscount, title: "Special Discount"),
];
List<Category> categoryList3 = [
  Category(icon: Assetsurl.igParis, title: "Paris"),
  Category(icon: Assetsurl.igBali, title: "Bali"),
  Category(icon: Assetsurl.igJapan, title: "Japan"),
  Category(icon: Assetsurl.igIceland, title: "Iceland"),
];
List<Category> categoryList4 = [
  Category(icon: Assetsurl.igCategory1, title: "Beach"),
  Category(icon: Assetsurl.igCategory2, title: "Mountains"),
];
List<Category> ListViewCategory = [
  Category(
    icon: Assetsurl.igListimg1,
  ),
  Category(
    icon: Assetsurl.igListimg2,
  ),
  Category(
    icon: Assetsurl.igListimg3,
  )
];

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF9F9F9),
      body: Container(
        padding: EdgeInsets.only(top: 20.h, left: 24.w, right: 24.w),
        child: SingleChildScrollView(
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
                    height: 90.h,
                    width: 103,
                    decoration: BoxDecoration(
                        color: Color(0xffF2F3F5),
                        borderRadius: BorderRadius.circular(4.r)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                            height: 41.h,
                            width: 41.w,
                            child: SvgPicture.asset(
                              categoryList1[index].icon!,
                            )),
                        SizedBox(
                          height: 5.h,
                        ),
                        Text(categoryList1[index].title!)
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 27.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: List.generate(
                  categoryList2.length,
                  (index) => Column(
                    children: [
                      CircleAvatar(
                        backgroundColor: Color(0xffF2F3F5),
                        child: SvgPicture.asset(categoryList2[index].icon!),
                        radius: 36.r,
                      ),
                      SizedBox(
                        height: 6.h,
                      ),
                      Text(
                        categoryList2[index].title!,
                        style: TextStyle(
                            fontFamily: Typo.manropeRegular, fontSize: 12.sp),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 25.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 42.h,
                    width: 165.w,
                    child: FilledButton(
                      style: ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(Colors.white),
                        shape: WidgetStatePropertyAll(
                          RoundedRectangleBorder(
                            side: BorderSide(color: Appcolors.primaryColor),
                            borderRadius: BorderRadius.circular(25.r),
                          ),
                        ),
                      ),
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(Assetsurl.icTodo),
                          SizedBox(
                            width: 6.h,
                          ),
                          Text(
                            "Things to do",
                            style: TextStyle(
                                fontFamily: Typo.manropeMedium,
                                fontSize: 16.sp,
                                color: Appcolors.primaryColor),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 42.h,
                    width: 165.w,
                    child: FilledButton(
                      style: ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(Colors.white),
                        shape: WidgetStatePropertyAll(
                          RoundedRectangleBorder(
                            side: BorderSide(color: Appcolors.primaryColor),
                            borderRadius: BorderRadius.circular(25.r),
                          ),
                        ),
                      ),
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(Assetsurl.icRestaurant),
                          SizedBox(
                            width: 6.h,
                          ),
                          Text(
                            "Restaurants",
                            style: TextStyle(
                                fontFamily: Typo.manropeMedium,
                                fontSize: 16.sp,
                                color: Appcolors.primaryColor),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 25.h,
              ),
              Container(
                clipBehavior: Clip.antiAlias,
                height: 144.h,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Color(0xff686F81),
                    borderRadius: BorderRadius.circular(5.r)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(Assetsurl.igTravelGif),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 15, top: 10),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "AI Trip Planner",
                                style: TextStyle(
                                    fontFamily: Typo.manropeSemiBold,
                                    fontSize: 12.sp,
                                    color: Appcolors.whiteTextColor),
                              ),
                              SvgPicture.asset(
                                Assetsurl.icAi,
                                height: 13.h,
                                width: 13.w,
                                color: Appcolors.whiteTextColor,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 50.h,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 15, top: 10),
                          child: SizedBox(
                            height: 25.h,
                            width: 94.w,
                            child: FilledButton(
                                style: ButtonStyle(
                                  backgroundColor:
                                      WidgetStatePropertyAll(Colors.white),
                                  shape: WidgetStatePropertyAll(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5.r),
                                    ),
                                  ),
                                ),
                                onPressed: () {},
                                child: Text(
                                  "Start Planning",
                                  style: TextStyle(
                                      fontFamily: Typo.manropeSemiBold,
                                      fontSize: 8.sp,
                                      color: Color(0xff686F81)),
                                )),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 25.h,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    " Top Destinations",
                    style:
                        TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w600),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "See all",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Appcolors.primaryColor),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              GridView(
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 15,
                    childAspectRatio: 165.w / 130.h,
                    crossAxisSpacing: 15),
                children: List.generate(
                  categoryList3.length,
                  (index) => Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(categoryList3[index].icon!),
                          fit: BoxFit.cover),
                    ),
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: Text(
                        categoryList3[index].title!,
                        style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w600,
                            color: Appcolors.whiteTextColor),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 25.h,
              ),
              SizedBox(
                height: 180.h,
                width: double.infinity,
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: List.generate(
                      ListViewCategory.length,
                      (index) => Container(
                            clipBehavior: Clip.antiAlias,
                            width: 360.w,
                            height: 180.h,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(14.r),
                                image: DecorationImage(
                                  image: AssetImage(
                                    ListViewCategory[index].icon!,
                                  ),
                                  fit: BoxFit.cover,
                                )),
                          )),
                ),
              ),
              SizedBox(height: 25.h),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    " Journey Together",
                    style:
                        TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w600),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "See all",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Appcolors.primaryColor),
                    ),
                  )
                ],
              ),
              SizedBox(height: 10.h),
              Container(
                decoration: BoxDecoration(color: Colors.white),
                height: 354.h,
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      Assetsurl.igMountBromo,
                      // height: 144.h,
                      // width: double.infinity,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Mount Bromo",
                            style: TextStyle(
                                fontSize: 16.sp, fontWeight: FontWeight.w600),
                          ),
                          Text(
                            "Volcano in East Java",
                            style: TextStyle(
                                fontSize: 10.sp,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff6C757D)),
                          ),
                          SizedBox(height: 4.h),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              VxRating(
                                selectionColor: Color(0xffFFD233),
                                onRatingUpdate: (value) {},
                                count: 1,
                              ),
                              SizedBox(width: 3.w),
                              Text(
                                "4.9",
                                style: TextStyle(
                                    fontSize: 12.sp,
                                    color: Color(0xff6C757D),
                                    fontWeight: FontWeight.w400),
                              ),
                              SizedBox(
                                width: 158.w,
                              ),
                              Column(
                                children: [
                                  Text(
                                    "Starts From",
                                    style: TextStyle(
                                        fontSize: 10.sp,
                                        color: Color(0xff6C757D)),
                                  ),
                                  Text(
                                    "Rs.56,150/per",
                                    style: TextStyle(
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.w400),
                                  )
                                ],
                              ),
                              Container(
                                height: 24.h,
                                width: 56.w,
                                decoration: BoxDecoration(
                                    color: Appcolors.primaryColor,
                                    borderRadius: BorderRadius.circular(12)),
                                child: Text(
                                  textAlign: TextAlign.center,
                                  "3D2N",
                                  style: TextStyle(
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w400,
                                      color: Appcolors.whiteTextColor),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 25.h,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    " Categories",
                    style:
                        TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w600),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "See all",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Appcolors.primaryColor),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              SizedBox(
                height: 300.h,
                width: double.infinity,
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: List.generate(
                    categoryList4.length,
                    (index) => Container(
                      padding: EdgeInsets.all(10),
                      margin: EdgeInsets.only(left: 18.w),
                      clipBehavior: Clip.antiAlias,
                      width: 160.w,
                      height: 300.h,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(14.r),
                          image: DecorationImage(
                            image: AssetImage(
                              categoryList4[index].icon!,
                            ),
                            fit: BoxFit.cover,
                          )),
                      child: Align(
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          categoryList4[index].title!,
                          style: TextStyle(
                              fontSize: 15.sp,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 25.h,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    " Most Visited Places",
                    style:
                        TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w600),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "See all",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Appcolors.primaryColor),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              SizedBox(
                height: 300.h,
                width: double.infinity,
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: List.generate(
                    categoryList4.length,
                    (index) => Container(
                      padding: EdgeInsets.all(10),
                      margin: EdgeInsets.only(left: 18.w),
                      clipBehavior: Clip.antiAlias,
                      width: 160.w,
                      height: 300.h,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(14.r),
                          image: DecorationImage(
                            image: AssetImage(
                              categoryList4[index].icon!,
                            ),
                            fit: BoxFit.cover,
                          )),
                      child: Align(
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          categoryList4[index].title!,
                          style: TextStyle(
                              fontSize: 15.sp,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
