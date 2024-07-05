import 'package:flutter/material.dart';
import '../../domain/entities/post.dart';

class PostItem extends StatelessWidget {
  final Post post;

  const PostItem({Key? key, required this.post}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(post.title),
      subtitle: Text(post.body),
      onTap: () {
        // Handle post update here
      },
      trailing: IconButton(
        icon: const Icon(Icons.delete),
        onPressed: () {
          // Handle post deletion here
        },
      ),
    );
  }
}
