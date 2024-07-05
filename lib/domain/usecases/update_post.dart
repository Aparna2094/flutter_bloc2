import '../entities/post.dart';
import '../repository/post_repository.dart';

class UpdatePost {
  final PostRepository repository;

  UpdatePost(this.repository);

  Future<Post> call(Post post) async {
    return await repository.updatePost(post);
  }
}
