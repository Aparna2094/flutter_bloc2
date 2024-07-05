import 'package:flutter_crud/data/datasource/post_datasource.dart';
import 'package:flutter_crud/domain/entities/post.dart';
import 'package:flutter_crud/domain/repository/post_repository.dart';
import 'package:flutter_crud/data/models/post_model.dart';

class PostRepositoryImpl implements PostRepository {
  final PostRemoteDataSource remoteDataSource;

  PostRepositoryImpl({required this.remoteDataSource});

  @override
  Future<List<Post>> getPosts() async {
    return await remoteDataSource.getPosts();
  }

  @override
  Future<Post> createPost(Post post) async {
    // Convert Post to PostModel
    final postModel = PostModel(
      id: post.id,
      title: post.title,
      body: post.body,
      userId: post.userId,
    );
    return await remoteDataSource.createPost(postModel);
  }

  @override
  Future<Post> updatePost(Post post) async {
    // Convert Post to PostModel
    final postModel = PostModel(
      id: post.id,
      title: post.title,
      body: post.body,
      userId: post.userId,
    );
    return await remoteDataSource.updatePost(postModel);
  }

  @override
  Future<void> deletePost(int id) async {
    await remoteDataSource.deletePost(id);
  }
}
