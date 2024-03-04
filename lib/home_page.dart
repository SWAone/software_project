// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
                    title: 'اضافة عامل', body: 'عدد العمال الكلي هو 20 عامل '),
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
                style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w600),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 7,
                        color: Colors.black.withOpacity(0.20),
                        offset: Offset(0, 2))
                  ],
                  borderRadius: BorderRadius.circular(10.sp),
                  color: Colors.white),
              child: Row(
                children: [Text('ادارة العمال')],
              ),
            )
          ],
        ),
      ),
    ));
  }

  Widget _myBox(
      {required String title,
      String color = '#25478A',
      String iconurl = 'assets/home_icon/Group 2638.png',
      String body = 'اضغط هنا لأدارة كافة مهمات العاملين',
      Color Textcolor = Colors.white}) {
    return Container(
      width: 189.w,
      height: 185.h,
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
}
