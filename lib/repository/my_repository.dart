import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';

import '../model/my_model.dart';

class MyRepository extends GetxService{
  static final firestore = FirebaseFirestore.instance;
  static final userCollection = firestore.collection('users');
  k()async{
    userCollection.add({"a" : 123});
  }

  Future<MyModel>getModel()async{
    final k = await userCollection.get();
    return MyModel.fromSnapshot(k.docs.first);
  }

}