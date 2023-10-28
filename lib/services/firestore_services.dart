import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreCollections{
  static final _firebase = FirebaseFirestore.instance;

  static final userCollection = _firebase.collection('user');
  static final postCollection = _firebase.collection('posts');
}