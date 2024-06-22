import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_entity.freezed.dart';

// @freezed
// class UserListEntity with _$UserListEntity {
//   const factory UserListEntity({
//     String? nextPage,
//     @Default([]) List<UserEntity> usersListEntity,
//   }) = _UserListEntity;
// }

@freezed
class UserEntity with _$UserEntity {
  const factory UserEntity({
    @Default('') String name,
    @Default('') String avatarUrl,
    @Default(0) int followersCount,
    @Default('') String reposUrl,
  }) = _UserEntity;
}
