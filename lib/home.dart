import'package:flutter/material.dart';
import 'package:get/get.dart';
import 'controller/home_controller.dart';
import 'design_system/theme/theme/app_color.dart';
import 'design_system/theme/theme/app_theme.dart';
import 'design_system/widget/chips/mychip.dart';
class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(HomeController());
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
              child: Text("textButton"),
            ),
            ElevatedButton(
              style: ButtonStyle(foregroundColor: MaterialStateProperty.all(AppColor.k())),
              onPressed: (){
              },
              child:Text("button"),
            ),
            const MyChip(label: "myChip",function: function),
          ],
        ),
      ),
    );
  }
}
void Function()? function(){
  print("hi");
}


    