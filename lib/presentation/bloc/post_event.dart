part of 'post_bloc.dart';

abstract class PostEvent extends Equatable {
  const PostEvent();

  @override
  List<Object> get props => [];
}

class LoadPosts extends PostEvent {}

class AddPost extends PostEvent {
  final Post post;

  const AddPost(this.post);

  @override
  List<Object> get props => [post];
}

class EditPost extends PostEvent {
  final Post post;

  const EditPost(this.post);

  @override
  List<Object> get props => [post];
}

class RemovePost extends PostEvent {
  final int id;

  const RemovePost(this.id);

  @override
  List<Object> get props => [id];
}
