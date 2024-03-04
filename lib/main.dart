import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:mangemnt/home_page.dart';

GetStorage box = GetStorage();
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    //     statusBarColor: AppColor.backgroundColor,
    //     systemNavigationBarColor: Colors.black,
    //     systemNavigationBarDividerColor: AppColor.backgroundColor));
    return ScreenUtilInit(
      builder: (context, child) {
        return GetMaterialApp(
            textDirection: TextDirection.rtl,
            // translations: Mylocal(),
            // locale: controller.initLang,
            debugShowCheckedModeBanner: false,
            builder: (context, child) {
              return MediaQuery(
                  data: MediaQuery.of(context).copyWith(textScaleFactor: 0.9),
                  child: child!);
            },
            home: HomePage(),
            theme: ThemeData(
                colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
                useMaterial3: true,
                fontFamily: 'Noto'));
      },
      designSize: const Size(430, 932),
    );
  }
}
