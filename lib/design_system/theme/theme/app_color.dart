import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppColor {
  static const MaterialColor primary = MaterialColor(
    0xFFBDBDBD,
    <int, Color>{
      50: Color(0xFFFAFAFA),
      100: Color(0xFFF5F5F5),
      200: Color(0xFFEEEEEE),
      300: Color(0xFFE0E0E0),
      400: Color(0xFFBDBDBD),
      500: Color(0xFF9E9E9E),
      600: Color(0xFF757575),
      700: Color(0xFF616161),
      800: Color(0xFF424242),
      900: Color(0xffffff),
    },
  );
  static const MaterialColor secondary = MaterialColor(
    0xFFBDBDBD,
    <int, Color>{
      50: Color(0xFFFAFAFA),
      100: Color(0xFFF5F5F5),
      200: Color(0xFFEEEEEE),
      300: Color(0xFFE0E0E0),
      400: Color(0xFFBDBDBD),
      500: Color(0xFF9E9E9E),
      600: Color(0xFF757575),
      700: Color(0xFF616161),
      800: Color(0xFF424242),
      900: Color(0xffffff),
    },
  );


  static const Color my1 = Colors.yellow; // light
  static const Color my2 = Colors.purpleAccent; //dark
  //1. 맵핑을 함
  //2. 변환하는 함수 생성
  //3. 함수에 매핑 값 넣으면 테마별로 반환
  static Color k(){
    return !Get.isDarkMode? my1 : my2;
  }
}
