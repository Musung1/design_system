import 'package:cloud_firestore/cloud_firestore.dart';

class MyModel{
  static final firestore = FirebaseFirestore.instance;
  static final userCollection = firestore.collection('users');

}