import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartdash/model/usermodel.dart';

class FireStoreServices
{
  static Future<void> addUser(UserModel user)
  async{
    await FirebaseFirestore.instance.collection("Users").add(user.toJson());
  }
}