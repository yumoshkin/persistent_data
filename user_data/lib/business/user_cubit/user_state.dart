part of 'user_cubit.dart';

@freezed
class UserState with _$UserState {
  const factory UserState.initial({
    @Default([]) List<User> users,
    @Default('') String message,
    @Default('') String error,
  }) = UserStateInitial;
  const factory UserState.loading({
    @Default([]) List<User> users,
    @Default('') String message,
    @Default('') String error,
  }) = UserStateLoading;
  const factory UserState.loaded({
    required List<User> users,
    @Default('') String message,
    @Default('') String error,
  }) = UserStateLoaded;
  const factory UserState.error({
    @Default([]) List<User> users,
    @Default('') String message,
    required String error,
  }) = UserStateError;
}
