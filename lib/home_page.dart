// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: HexColor('#FDFDFE'),
      systemNavigationBarColor: Colors.black,
    ));
    return SafeArea(
      child: Scaffold(
        backgroundColor: HexColor('#FDFDFE'),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 12.h, bottom: 30.h),
                child: Center(
                  child: Text(
                    'تطبيق الادارة',
                    style:
                        TextStyle(fontSize: 22.sp, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _myBox(
                      title: 'اضافة عامل',
                      body: 'عدد العمال الكلي هو 20 عامل '),
                  _myBox(
                      title: 'المهمات',
                      color: '#FDFDFE',
                      Textcolor: Colors.black,
                      iconurl: 'assets/home_icon/Group 2637.png'),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: 20.h, bottom: 7.h),
                child: Text(
                  'الادارة',
                  style:
                      TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w600),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    _section(
                      image: 'assets/home_icon/UsersThree.png',
                      text: 'ادارة العمال',
                    ),
                    SizedBox(width: 8.3.w),
                    _section(
                      image: 'assets/home_icon/dollar-coin.png',
                      text: 'الوضع المالي',
                    ),
                    SizedBox(width: 8.3.w),
                    _section(
                      image: 'assets/home_icon/HandCoins.png',
                      text: 'الرواتب',
                    ),
                    SizedBox(width: 8.3.w),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20.h, bottom: 7.h),
                child: Text(
                  'العمال',
                  style:
                      TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w600),
                ),
              ),
              _laborers(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _laborers_null() {
    return Expanded(
        child: Padding(
      padding: EdgeInsets.only(top: 20.0, right: 159.w),
      child: Text(
        'لايوجد عمال',
        style: TextStyle(
          color: Colors.black.withOpacity(0.47),
          fontSize: 20.sp,
          fontWeight: FontWeight.w700,
        ),
      ),
    ));
  }

  Widget _section({required image, required text}) {
    return Container(
      height: 56.h,
      decoration: BoxDecoration(
        border: Border.all(
          width: 1.04.w,
          color: Color(0xff000000).withOpacity(0.16),
        ),
        borderRadius: BorderRadius.circular(10.4),
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset(image),
            SizedBox(width: 8.3.w),
            Text(
              text,
              style: TextStyle(
                fontSize: 18.sp,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _myBox(
      {required String title,
      String color = '#25478A',
      String iconurl = 'assets/home_icon/Group 2638.png',
      String body = 'اضغط هنا لأدارة كافة مهمات العاملين',
      Color Textcolor = Colors.white}) {
    return Container(
      width: 189.w,
      height: 200.h,
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
            blurRadius: 7,
            color: Colors.black.withOpacity(0.20),
            offset: Offset(0, 2))
      ], borderRadius: BorderRadius.circular(10.sp), color: HexColor(color)),
      child: Padding(
        padding:
            EdgeInsets.only(top: 15.h, right: 12.w, bottom: 13.h, left: 10.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              iconurl,
              width: 50.w,
              height: 50.h,
            ),
            Padding(
              padding: EdgeInsets.only(top: 6.h, bottom: 6.h),
              child: Text(
                title,
                style: TextStyle(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w700,
                    color: Textcolor),
              ),
            ),
            SizedBox(
              width: 143.w,
              child: Text(
                body,
                style: TextStyle(
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w700,
                    color: Textcolor.withOpacity(0.5)),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _laborers() {
    return Column(
      children: [
        Container(
          // alignment: Alignment.center,
          height: 46.h,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                blurRadius: 9,
                color: Colors.black.withOpacity(0.14),
              )
            ],
          ),
          child: TextField(
            decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.search,
                ),
                hintText: 'ابحث عن عامل',
                border: UnderlineInputBorder(borderSide: BorderSide.none)),
          ),
        ),
        // GridView.builder(
        //     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        //       crossAxisCount: 3, // عدد الأعمدة في الشبكة
        //       crossAxisSpacing: 10.0, // المسافة بين العناصر في الاتجاه الأفقي
        //       mainAxisSpacing: 10.0, // المسافة بين العناصر في الاتجاه الرأسي
        //     ),
        //     itemCount: 5, // عدد العناصر في الشبكة
        //     itemBuilder: (BuildContext context, int index) {
        //       // دالة بناء العناصر
        //       return Container(
        //           color: Colors.blueGrey,
        //           child: Center(
        //             child: Text(
        //               'data',
        //               style: TextStyle(color: Colors.white),
        //             ),
        //           ));
        //     })
      ],
    );
  }
}
