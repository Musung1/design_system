import 'package:design_project/design_system/theme/theme/app_buttonstyle.dart';
import'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'design_system/theme/theme/app_color.dart';
import 'design_system/theme/theme/app_theme.dart';
class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar : AppBar(
        title : Text("hi"),
      ),
      body : SafeArea(
        child : Column(
          children: [
            ElevatedButton(
              onPressed: (){},
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all(AppColor.primary.shade400)
              ),
              child:Text("button"),
            ),
            TextButton(
              onPressed: (){
                Get.changeTheme(Get.isDarkMode? AppTheme.light : AppTheme.dark);
              },
              style: AppButtonStyle.whiteButtonStyle,
              child: Text("textButton"),
            ),
            ElevatedButton(
              onPressed: (){},
              style: AppButtonStyle.myButtonStyle,
              child:Text("button"),
            ),
            Container(
              height: 200,
              width : 200,
            ),
          ],
        ),
      ),
    );
  }
}

    