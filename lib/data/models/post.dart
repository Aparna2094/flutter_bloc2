import 'package:equatable/equatable.dart';

class Post extends Equatable {
  final int? id; // Nullable id
  final String title;
  final String body;
  final int userId;

  const Post({
    this.id, // Nullable id
    required this.title,
    required this.body,
    required this.userId,
  });

  @override
  List<Object?> get props => [id, title, body, userId];
}
