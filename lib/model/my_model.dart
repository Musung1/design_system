import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:design_project/model/sub_model.dart';
import 'package:get/get.dart';

class MyModel{
  String? data;
  RxList<SubModel> subModelList = <SubModel>[].obs;
  MyModel({required this.data});
  MyModel.empty(){
    this.data = "2";
  }
  MyModel.fromSnapshot(DocumentSnapshot snapshot)
      : data = snapshot['data'];
}