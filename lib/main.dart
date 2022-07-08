import 'dart:ui';
import 'package:design_project/design_system/theme/theme/app_theme.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'home.dart';

main() {
  runApp(
    ScreenUtilInit(
      designSize: const Size(375, 812),///
      minTextAdapt: true,
      builder: (context, child) {
        return GetMaterialApp(
          theme: AppTheme.light,
          darkTheme: AppTheme.dark,
          themeMode: ThemeMode.system,
          home: Home(),
        );
      },
    ),
  );
}
//local
