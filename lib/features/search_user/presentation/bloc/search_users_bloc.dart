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
  }

  final RemoteDataSource _remoteDataSource;

  Future<void> _searchUsers(_SearchUsers event, Emitter<SearchUsersState> emit) async {
    // if (state.isLoading) {
    //   return;
    // }

    try {
      emit(state.copyWith(
        isLoading: true,
        failure: null,
      ));
      final usersList = await _remoteDataSource.searchUsers(event.query);
      print('BLOC!!!: $usersList');

      emit(SearchUsersState(
        isLoading: false,
        usersList: usersList,
        failure: null,
      ));
    } catch (error) {
      print('ERROR');
      emit(state.copyWith(
        isLoading: false,
        failure: error,
      ));
    }
  }
}
