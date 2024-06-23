part of 'get_by_group_cubit.dart';

@immutable
sealed class GetByGroupState {}

final class GetByGroupInitial extends GetByGroupState {}

final class GetByGroupLoading extends GetByGroupState {}

final class GetByGroupSuccess extends GetByGroupState {
  GetByGroup? getByGroup;
  GetByGroupSuccess({ this.getByGroup});
}

final class GetByGroupError extends GetByGroupState {
  final String? errorMessage;

  GetByGroupError({ this.errorMessage});
}
