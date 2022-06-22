import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'app_color.dart';
import 'app_textstyle.dart';

class AppButtonStyle {
  static final ButtonStyle whiteButtonStyle = ButtonStyle(
      backgroundColor: MaterialStateProperty.resolveWith((states) {
        if (states.contains(MaterialState.disabled)) {
          return Get.theme.primaryColor;
        }
        return Get.theme.primaryColor;
      }),
    );
  static final ButtonStyle myButtonStyle = ButtonStyle(
    backgroundColor: MaterialStateProperty.resolveWith((states) {
      if (states.contains(MaterialState.disabled)) {
        return Get.theme.primaryColor;
      }
      return AppColor.k();
    }),
  );
}


