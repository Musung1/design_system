import 'package:design_project/repository/my_repository.dart';
import 'package:get/get.dart';
import '../model/my_model.dart';

class HomeController extends GetxController{
  static HomeController get to => Get.find();
  Rx<MyModel> myModel = MyModel.empty().obs;
  @override
  void onInit()async{
    myModel.listen((p0) {
      myModel.value.subModelList.bindStream(MyRepository().subModelListStream());
    });
    myModel.bindStream(MyRepository().myModelStream());
    super.onInit();
  }
}//