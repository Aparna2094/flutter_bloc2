import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_crud/presentation/bloc/post_bloc.dart';
import 'package:flutter_crud/presentation/pages/post_item.dart';


class PostPage extends StatelessWidget {
  const PostPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Posts')),
      body: BlocBuilder<PostBloc, PostState>(
        builder: (context, state) {
          if (state is PostLoading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is PostLoaded) {
            return ListView.builder(
              itemCount: state.posts.length,
              itemBuilder: (context, index) {
                return PostItem(post: state.posts[index]);
              },
            );
          } else if (state is PostError) {
            return const Center(child: Text('Failed to load posts'));
          } else {
            return const Center(child: Text('No Posts'));
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your post creation logic here
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
