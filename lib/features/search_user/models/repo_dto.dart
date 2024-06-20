import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:github_user_search/core/converters/date_time_converters.dart';
import 'package:github_user_search/features/search_user/models/repo_entity.dart';

part 'repo_dto.freezed.dart';
part 'repo_dto.g.dart';

@freezed
class RepoDto with _$RepoDto {
  const factory RepoDto({
    @JsonKey(name: 'name') @Default('') String name,
    @JsonKey(name: 'description') @Default('') String description,
    @JsonKey(name: 'pushed_at') @DateTimeConverter() DateTime? commitAt,
    @JsonKey(name: 'default_branch') @Default('') String defaultBranch,
    @JsonKey(name: 'forks_count') @Default(0) int forksCount,
    @JsonKey(name: 'stargazers_count') @Default(0) int starsCount,
    @JsonKey(name: 'language') @Default('') String machineCode,
  }) = _RepoDto;

  const RepoDto._();

  factory RepoDto.fromJson(Map<String, dynamic> json) => _$RepoDtoFromJson(json);

  RepoEntity toEntity() {
    return RepoEntity(
      name: name,
      description: description,
      commitAt: commitAt,
      defaultBranch: defaultBranch,
      forksCount: forksCount,
      starsCount: starsCount,
      machineCode: machineCode,
    );
  }
}
