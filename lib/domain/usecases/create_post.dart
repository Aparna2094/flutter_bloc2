import '../entities/post.dart';
import '../repository/post_repository.dart';

class CreatePost {
  final PostRepository repository;

  CreatePost(this.repository);

  Future<Post> call(Post post) async {
    return await repository.createPost(post);
  }
}
