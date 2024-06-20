import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:github_user_search/features/search_user/models/user_entity.dart';

part 'user_dto.freezed.dart';
part 'user_dto.g.dart';

@freezed
class UserDto with _$UserDto {
  const factory UserDto({
    @JsonKey(name: 'login') @Default('') String login,
    @JsonKey(name: 'avatar_url') @Default('') String avatarUrl,
    @JsonKey(name: 'followers_url') @Default('') String followersUrl,
    @JsonKey(name: 'repos_url') @Default('') String reposUrl,
    @Default(0) int followersCount,
  }) = _UserDto;

  const UserDto._();

  factory UserDto.fromJson(Map<String, dynamic> json) => _$UserDtoFromJson(json);

  UserEntity toEntity() {
    return UserEntity(
      name: login,
      avatarUrl: avatarUrl,
      followersCount: followersCount,
      reposUrl: reposUrl,
    );
  }
}
