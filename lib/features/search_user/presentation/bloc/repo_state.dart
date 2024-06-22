part of 'repo_bloc.dart';

@freezed
class RepoState with _$RepoState {
  const factory RepoState({
    String? nextPage,
    String? previousRequest,
    @Default(false) bool isLoading,
    @Default([]) List<RepoEntity> reposList,
    Object? failure,
  }) = _RepoState;

  const RepoState._();

  bool get isSuccess {
    return !isLoading && failure == null;
  }

  bool get isFailure {
    return failure != null;
  }
}
