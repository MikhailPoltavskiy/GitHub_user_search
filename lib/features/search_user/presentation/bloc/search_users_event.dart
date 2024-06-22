part of 'search_users_bloc.dart';

@freezed
class SearchUsersEvent with _$SearchUsersEvent {
  const factory SearchUsersEvent.searchUsers({required String query}) = _SearchUsers;
  const factory SearchUsersEvent.updateSearchUsers() = _UpdateSearchUsers;
}
