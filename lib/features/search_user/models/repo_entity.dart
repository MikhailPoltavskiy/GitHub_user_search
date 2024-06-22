import 'package:freezed_annotation/freezed_annotation.dart';

part 'repo_entity.freezed.dart';

@freezed
class ReposListEntity with _$ReposListEntity {
  const factory ReposListEntity({
    String? nextPage,
    @Default([]) List<RepoEntity> reposListEntity,
  }) = _ReposListEntity;
}

@freezed
class RepoEntity with _$RepoEntity {
  const factory RepoEntity({
    @Default('') String name,
    @Default('') String description,
    DateTime? commitAt,
    @Default('') String defaultBranch,
    @Default(0) int forksCount,
    @Default(0) int starsCount,
    @Default('') String machineCode,
  }) = _RepoEntity;
}
