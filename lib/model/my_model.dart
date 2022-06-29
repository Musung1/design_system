import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:design_project/model/sub_model.dart';

class MyModel{
  late String data;
  late List<SubModel> subModelList;
  MyModel({required this.data,required this.subModelList});
  Future fetchSubModel(DocumentSnapshot snapshot) async {
    final ref = await snapshot.reference.collection("sub").get();
    this.subModelList = ref.docs.map((e) => SubModel.fromSnapshot(e)).toList();
  }
  MyModel.fromSnapshot(DocumentSnapshot snapshot)
      : data = snapshot['data'],
        subModelList = [];
}