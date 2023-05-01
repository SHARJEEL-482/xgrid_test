import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/instance_manager.dart';
import 'package:get/route_manager.dart';
import 'package:xgrid_test/UI/profile/profile.dart';
import 'package:xgrid_test/Core/themes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(Get.width, Get.height),
      builder: (context, child) {
        return GetMaterialApp(
          title: 'Flutter Demo',
          theme: Themes.lightTheme,
          darkTheme: Themes.darkTheme,
          home: const Profile(),
          debugShowCheckedModeBanner: false,
        );
      },
    );
  }
}
