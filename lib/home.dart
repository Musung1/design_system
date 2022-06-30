import 'package:design_project/repository/my_repository.dart';
import'package:flutter/material.dart';
import 'package:get/get.dart';
import 'controller/home_controller.dart';
import 'design_system/theme/theme/app_color.dart';
import 'design_system/theme/theme/app_theme.dart';
import 'design_system/widget/chips/mychip.dart';
import 'model/my_model.dart';
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
              onPressed: (){
                MyRepository().k();
              },
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
                print("sssss");
                HomeController.to.myModel.value = MyModel(data:"123");
              },
              child:Text("button"),
            ),
            const MyChip(label: "myChip",function: function),
            Obx((){
                return Text(HomeController.to.myModel.value.data!);
            }),
            Obx((){
              return Column(
                children: HomeController.to.myModel.value.subModelList.map((e) => Text(e.data)).toList(),
              );
            }),
          ],
        ),
      ),
    );
  }
}
void Function()? function(){
  print("hi");
}


    