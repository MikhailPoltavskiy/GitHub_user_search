part of 'repo_bloc.dart';

@freezed
class RepoEvent with _$RepoEvent {
  const factory RepoEvent.fetchRepos({required String url}) = _FetchRepos;
}
