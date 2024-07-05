import 'package:get_it/get_it.dart';
import 'package:http/http.dart' as http;

import 'data/datasource/post_datasource.dart';
import 'data/repositories/post_repository_impl.dart';
import 'domain/repository/post_repository.dart';
import 'domain/usecases/get_posts.dart';
import 'domain/usecases/create_post.dart';
import 'domain/usecases/update_post.dart';
import 'domain/usecases/delete_post.dart';
import 'presentation/bloc/post_bloc.dart';

final sl = GetIt.instance;

Future<void> init() async {
  // BLoC
  sl.registerFactory(
    () => PostBloc(
      getPosts: sl(),
      createPost: sl(),
      updatePost: sl(),
      deletePost: sl(),
    ),
  );

  // Use cases
  sl.registerLazySingleton(() => GetPosts(sl()));
  sl.registerLazySingleton(() => CreatePost(sl()));
  sl.registerLazySingleton(() => UpdatePost(sl()));
  sl.registerLazySingleton(() => DeletePost(sl()));

  // Repository
  sl.registerLazySingleton<PostRepository>(
    () => PostRepositoryImpl(remoteDataSource: sl()),
  );

  // Data sources
  sl.registerLazySingleton<PostRemoteDataSource>(
    () => PostRemoteDataSourceImpl(client: sl()),
  );

  // External
  sl.registerLazySingleton(() => http.Client());
}
