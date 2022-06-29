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
              },
              child:Text("button"),
            ),
            const MyChip(label: "myChip",function: function),
            FutureBuilder<MyModel>(
                future : MyRepository().getModel(),
                builder: (context,k){
                  if(k.hasData){
                    MyModel model = k.data!;
                    return Container(
                      child: Text(model.data,style: TextStyle(color: Colors.white),),
                    );
                  }
                  else return Container(
                    child: Text("hiroo"),
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


    