import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:github_user_search/features/search_user/data/remote_data_source.dart';
import 'package:github_user_search/features/search_user/models/user_entity.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'search_users_bloc.freezed.dart';
part 'search_users_event.dart';
part 'search_users_state.dart';

class SearchUsersBloc extends Bloc<SearchUsersEvent, SearchUsersState> {
  SearchUsersBloc(
    this._remoteDataSource,
  ) : super(const SearchUsersState()) {
    on<_SearchUsers>(_searchUsers);
    on<_UpdateSearchUsers>(_updateSearchUsers);
  }

  final RemoteDataSource _remoteDataSource;

  Future<void> _searchUsers(
    _SearchUsers event,
    Emitter<SearchUsersState> emit,
  ) async {
    if (state.isLoading) {
      return;
    }

    try {
      emit(const SearchUsersState(
        isLoading: true,
        failure: null,
      ));

      final result = await _remoteDataSource.searchUsers(event.query);

      emit(state.copyWith(
        nextPage: result.nextPage,
        isLoading: false,
        usersList: result.usersListEntity,
        failure: null,
      ));
    } catch (error) {
      if (kDebugMode) {
        print(error);
      }
      emit(state.copyWith(
        isLoading: false,
        failure: error,
      ));
    }
  }

  Future<void> _updateSearchUsers(
    _UpdateSearchUsers event,
    Emitter<SearchUsersState> emit,
  ) async {
    if (state.nextPage == null) {
      return;
    }
    if (state.isLoading) {
      return;
    }
    try {
      emit(state.copyWith(
        isLoading: true,
        failure: null,
      ));

      final result = await _remoteDataSource.updateSearchUsers(state.nextPage!);
      List<UserEntity> usersList = state.usersList + result.usersListEntity;
      emit(state.copyWith(
        nextPage: result.nextPage,
        isLoading: false,
        usersList: usersList,
      ));
    } catch (error) {
      if (kDebugMode) {
        print(error);
      }
      emit(state.copyWith(
        isLoading: false,
        failure: error,
      ));
    }
  }
}
