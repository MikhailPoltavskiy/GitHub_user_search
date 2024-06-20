import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:github_user_search/features/search_user/data/remote_data_source.dart';
import 'package:github_user_search/features/search_user/models/repo_entity.dart';

part 'repo_event.dart';
part 'repo_state.dart';
part 'repo_bloc.freezed.dart';

class RepoBloc extends Bloc<RepoEvent, RepoState> {
  RepoBloc(this._remoteDataSource) : super(const RepoState()) {
    on<_FetchRepos>(_fetchRepos);
  }

  final RemoteDataSource _remoteDataSource;

  Future<void> _fetchRepos(_FetchRepos event, Emitter<RepoState> emit) async {
    try {
      // emit(state.copyWith(
      //   isLoading: true,
      //   failure: null,
      // ));
      emit(const _RepoState(
        isLoading: true,
        failure: null,
      ));
      final reposList = await _remoteDataSource.fetchUserRepos(event.url);
      print('BLOC!!!: $reposList');

      // emit(_RepoState(
      //   isLoading: false,
      //   reposList: reposList,
      //   failure: null,
      // ));
      emit(state.copyWith(
        isLoading: false,
        reposList: reposList,
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
