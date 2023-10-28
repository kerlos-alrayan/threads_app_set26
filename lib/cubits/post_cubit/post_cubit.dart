import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:threads_app_set26/main.dart';
import 'package:threads_app_set26/services/firestore_services.dart';

part 'post_state.dart';

class PostCubit extends Cubit<PostState> {
  final BuildContext context;
  PostCubit(this.context) : super(PostInitial());

  final postController = TextEditingController();

  void onPostBottomPressed() {
    final isPostValidated = validatePost();
    if (isPostValidated) {
      uploadPostToFirebase();
     navigatorKey.currentState!.pop();
    }
  }

  bool validatePost() {
    if (postController.text.isEmpty) {
      globalMessenger.currentState!.showSnackBar(
        SnackBar(
          content: Text('Your post is empty!'),
          backgroundColor: Colors.red,
        ),
      );
      return false;
    }
    if (postController.text.length < 4) {
      globalMessenger.currentState!.showSnackBar(
        SnackBar(
          content: Text('Your post is smaller than 4 characters!'),
          backgroundColor: Colors.red,
        ),
      );
      return false;
    }
    return true;
  }

  void uploadPostToFirebase() async {
    try {
      final postCollection = FirestoreCollections.postCollection;
      final userId = FirebaseAuth.instance.currentUser?.uid;
      final photoUrl = FirebaseAuth.instance.currentUser?.photoURL;
      final name = FirebaseAuth.instance.currentUser?.displayName;

      await postCollection.add({
        'id': userId,
        'photo': photoUrl,
        'username': name,
        'content': postController.text,
        'timestamp': DateTime.now().toString(),
      });
      postController.clear();
      globalMessenger.currentState!.showSnackBar(SnackBar(
        content: Text('Your post added successfully!'),
        backgroundColor: Colors.green,
      ));
    } on Exception catch (e) {
      globalMessenger.currentState!.showSnackBar(SnackBar(
        content: Text('There is an error try again : ${e.toString()}'),
        backgroundColor: Colors.red,
      ));
    }
  }
}