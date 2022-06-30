import 'package:cloud_firestore/cloud_firestore.dart';

class SubModel{
  late String data;
  SubModel({required data});
  SubModel.fromSnapshot(DocumentSnapshot snapshot)
      : data = snapshot["data"];
}