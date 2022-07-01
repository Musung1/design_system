import 'package:design_project/repository/my_repository.dart';
import 'package:get/get.dart';
import '../model/my_model.dart';
import '../model/sub_model.dart';

class HomeController extends GetxController{
  static HomeController get to => Get.find();
  Rx<MyModel> myModel = MyModel.empty().obs;
  RxList<SubModel> subModel = <SubModel>[].obs;

  Rx<MyModel> myModel1 = MyModel.empty().obs;
  Rx<MyModel> myModel2 = MyModel.empty().obs;
  Rx<MyModel> myModel3 = MyModel.empty().obs;
  Stream<List<SubModel>> k = MyRepository().subModelListStream();
  Stream<MyModel> j = MyRepository().myModelStream().asBroadcastStream();
  @override
  void onInit()async{
    myModel.bindStream(j);
    subModel.bindStream(k);
    super.onInit();
  }
  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }
}//