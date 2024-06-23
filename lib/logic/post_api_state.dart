part of 'post_api_cubit.dart';

@immutable
sealed class PostApiState {}

final class PostApiInitial extends PostApiState {}
final class PostApiLoading extends PostApiState {}
final class PostApiSuccess extends PostApiState {}
final class PostApiError extends PostApiState {
  final String message;

  PostApiError(this.message);
}

