part of 'search_users_bloc.dart';

@freezed
class SearchUsersState with _$SearchUsersState {
  const factory SearchUsersState({
    @Default(false) bool isLoading,
    @Default([]) List<UserEntity> usersList,
    Object? failure,
  }) = _SearchUsersState;

  const SearchUsersState._();

  bool get isSuccess {
    return !isLoading && failure == null;
  }

  bool get isFailure {
    return failure != null;
  }
}
