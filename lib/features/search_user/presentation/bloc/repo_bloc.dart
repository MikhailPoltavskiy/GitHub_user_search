import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:github_user_search/features/search_user/data/remote_data_source.dart';
import 'package:github_user_search/features/search_user/models/repo_entity.dart';

part 'repo_event.dart';
part 'repo_state.dart';
part 'repo_bloc.freezed.dart';

class RepoBloc extends Bloc<RepoEvent, RepoState> {
  RepoBloc(this._remoteDataSource) : super(const RepoState()) {
    on<_FetchRepos>(_fetchRepos);
    on<_UpdateRepos>(_updateRepos);
  }

  final RemoteDataSource _remoteDataSource;

  Future<void> _fetchRepos(
    _FetchRepos event,
    Emitter<RepoState> emit,
  ) async {
    if (state.isLoading) {
      return;
    }
    if (event.url == state.previousRequest) {
      return;
    }

    try {
      emit(const RepoState(
        isLoading: true,
        failure: null,
      ));

      final result = await _remoteDataSource.fetchUserRepos(event.url);

      emit(state.copyWith(
        nextPage: result.nextPage,
        isLoading: false,
        reposList: result.reposListEntity,
        previousRequest: event.url,
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

  Future<void> _updateRepos(
    _UpdateRepos event,
    Emitter<RepoState> emit,
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

      final result = await _remoteDataSource.fetchUserRepos(state.nextPage!);
      List<RepoEntity> reposList = state.reposList + result.reposListEntity;
      emit(state.copyWith(
        nextPage: result.nextPage,
        isLoading: false,
        reposList: reposList,
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
