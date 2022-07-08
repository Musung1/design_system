import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';

import '../model/my_model.dart';
import '../model/sub_model.dart';

class MyRepository extends GetxService{
  static final firestore = FirebaseFirestore.instance;
  static final userCollection = firestore.collection('users');
  k()async{
    userCollection.add({"a" : 123});
  }
////
  Future<MyModel>getModel()async{
    final k = await userCollection.get();
    return MyModel.fromSnapshot(k.docs.first);
  }
  Stream<MyModel> myModelStream(){
    final k = userCollection.snapshots();
    return k.map((event) => MyModel.fromSnapshot(event.docs.first));
  }
  Stream<List<SubModel>> subModelListStream()async*{
    final k = await userCollection.get();
    yield* k.docs.first.reference.collection('sub')
        .snapshots()
        .map((event) => event.docs.map((e) => SubModel.fromSnapshot(e)).toList());

  }

}