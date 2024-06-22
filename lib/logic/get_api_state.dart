part of 'get_api_cubit.dart';

@immutable
sealed class GetApiState {}

final class GetApiInitial extends GetApiState {}

final class GetApiLoading extends GetApiState {}

final class GetApiSuccess extends GetApiState {
  GetApiModel? getapimodel;
  GetApiSuccess({this.getapimodel});
}

final class GetApiError extends GetApiState {
  final String message;

  GetApiError(this.message);
}
