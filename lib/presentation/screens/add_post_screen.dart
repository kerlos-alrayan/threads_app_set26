import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:threads_app_set26/cubits/post_cubit/post_cubit.dart';

class AddPostScreen extends StatelessWidget {
  const AddPostScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // resizeToAvoidBottomInset: false,
      appBar: AppBar(
        actions: [
          TextButton(
            onPressed: () {

              context.read<PostCubit>().onPostBottomPressed();

            },
            child: const Text('Post'),
          )
        ],
        backgroundColor: Colors.white,
        elevation: 0.0,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            TextFormField(
              controller: context.read<PostCubit>().postController,
              maxLines: 20,
              decoration: InputDecoration(
                hintText: 'Write your post',
                border: InputBorder.none,
                contentPadding: EdgeInsets.all(8)
              ),
            ),
          ],
        ),
      )
    );
  }
}
