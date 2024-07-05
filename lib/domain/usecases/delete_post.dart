import '../repository/post_repository.dart';

class DeletePost {
  final PostRepository repository;

  DeletePost(this.repository);

  Future<void> call(int id) async {
    await repository.deletePost(id);
  }
}
