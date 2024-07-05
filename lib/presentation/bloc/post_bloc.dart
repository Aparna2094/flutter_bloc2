// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_crud/domain/usecases/create_post.dart';
import 'package:flutter_crud/domain/usecases/delete_post.dart';
import 'package:flutter_crud/domain/usecases/get_posts.dart';
import 'package:flutter_crud/domain/usecases/update_post.dart';
import '../../domain/entities/post.dart';


part 'post_event.dart';
part 'post_state.dart';

class PostBloc extends Bloc<PostEvent, PostState> {
  final GetPosts getPosts;
  final CreatePost createPost;
  final UpdatePost updatePost;
  final DeletePost deletePost;

  PostBloc({
    required this.getPosts,
    required this.createPost,
    required this.updatePost,
    required this.deletePost,
  }) : super(PostInitial()) {
    on<LoadPosts>(_onLoadPosts);
    on<AddPost>(_onAddPost);
    on<EditPost>(_onEditPost);
    on<RemovePost>(_onRemovePost);
  }

  Future<void> _onLoadPosts(LoadPosts event, Emitter<PostState> emit) async {
    emit(PostLoading());
    try {
      final posts = await getPosts();
      emit(PostLoaded(posts: posts));
    } catch (_) {
      emit(PostError());
    }
  }

  Future<void> _onAddPost(AddPost event, Emitter<PostState> emit) async {
    try {
      final post = await createPost(event.post);
      final currentState = state;
      if (currentState is PostLoaded) {
        final updatedPosts = List<Post>.from(currentState.posts)..add(post);
        emit(PostLoaded(posts: updatedPosts));
      }
    } catch (_) {
      emit(PostError());
    }
  }

  Future<void> _onEditPost(EditPost event, Emitter<PostState> emit) async {
    try {
      final post = await updatePost(event.post);
      final currentState = state;
      if (currentState is PostLoaded) {
        final updatedPosts = currentState.posts.map((p) => p.id == post.id ? post : p).toList();
        emit(PostLoaded(posts: updatedPosts));
      }
    } catch (_) {
      emit(PostError());
    }
  }

  Future<void> _onRemovePost(RemovePost event, Emitter<PostState> emit) async {
    try {
      await deletePost(event.id);
      final currentState = state;
      if (currentState is PostLoaded) {
        final updatedPosts = currentState.posts.where((p) => p.id != event.id).toList();
        emit(PostLoaded(posts: updatedPosts));
      }
    } catch (_) {
      emit(PostError());
    }
  }
}
