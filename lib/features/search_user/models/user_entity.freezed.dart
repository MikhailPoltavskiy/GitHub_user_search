// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UsersListEntity {
  String? get nextPage => throw _privateConstructorUsedError;
  List<UserEntity> get usersListEntity => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UsersListEntityCopyWith<UsersListEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UsersListEntityCopyWith<$Res> {
  factory $UsersListEntityCopyWith(
          UsersListEntity value, $Res Function(UsersListEntity) then) =
      _$UsersListEntityCopyWithImpl<$Res, UsersListEntity>;
  @useResult
  $Res call({String? nextPage, List<UserEntity> usersListEntity});
}

/// @nodoc
class _$UsersListEntityCopyWithImpl<$Res, $Val extends UsersListEntity>
    implements $UsersListEntityCopyWith<$Res> {
  _$UsersListEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nextPage = freezed,
    Object? usersListEntity = null,
  }) {
    return _then(_value.copyWith(
      nextPage: freezed == nextPage
          ? _value.nextPage
          : nextPage // ignore: cast_nullable_to_non_nullable
              as String?,
      usersListEntity: null == usersListEntity
          ? _value.usersListEntity
          : usersListEntity // ignore: cast_nullable_to_non_nullable
              as List<UserEntity>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UsersListEntityImplCopyWith<$Res>
    implements $UsersListEntityCopyWith<$Res> {
  factory _$$UsersListEntityImplCopyWith(_$UsersListEntityImpl value,
          $Res Function(_$UsersListEntityImpl) then) =
      __$$UsersListEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? nextPage, List<UserEntity> usersListEntity});
}

/// @nodoc
class __$$UsersListEntityImplCopyWithImpl<$Res>
    extends _$UsersListEntityCopyWithImpl<$Res, _$UsersListEntityImpl>
    implements _$$UsersListEntityImplCopyWith<$Res> {
  __$$UsersListEntityImplCopyWithImpl(
      _$UsersListEntityImpl _value, $Res Function(_$UsersListEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nextPage = freezed,
    Object? usersListEntity = null,
  }) {
    return _then(_$UsersListEntityImpl(
      nextPage: freezed == nextPage
          ? _value.nextPage
          : nextPage // ignore: cast_nullable_to_non_nullable
              as String?,
      usersListEntity: null == usersListEntity
          ? _value._usersListEntity
          : usersListEntity // ignore: cast_nullable_to_non_nullable
              as List<UserEntity>,
    ));
  }
}

/// @nodoc

class _$UsersListEntityImpl implements _UsersListEntity {
  const _$UsersListEntityImpl(
      {this.nextPage, final List<UserEntity> usersListEntity = const []})
      : _usersListEntity = usersListEntity;

  @override
  final String? nextPage;
  final List<UserEntity> _usersListEntity;
  @override
  @JsonKey()
  List<UserEntity> get usersListEntity {
    if (_usersListEntity is EqualUnmodifiableListView) return _usersListEntity;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_usersListEntity);
  }

  @override
  String toString() {
    return 'UsersListEntity(nextPage: $nextPage, usersListEntity: $usersListEntity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UsersListEntityImpl &&
            (identical(other.nextPage, nextPage) ||
                other.nextPage == nextPage) &&
            const DeepCollectionEquality()
                .equals(other._usersListEntity, _usersListEntity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, nextPage,
      const DeepCollectionEquality().hash(_usersListEntity));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UsersListEntityImplCopyWith<_$UsersListEntityImpl> get copyWith =>
      __$$UsersListEntityImplCopyWithImpl<_$UsersListEntityImpl>(
          this, _$identity);
}

abstract class _UsersListEntity implements UsersListEntity {
  const factory _UsersListEntity(
      {final String? nextPage,
      final List<UserEntity> usersListEntity}) = _$UsersListEntityImpl;

  @override
  String? get nextPage;
  @override
  List<UserEntity> get usersListEntity;
  @override
  @JsonKey(ignore: true)
  _$$UsersListEntityImplCopyWith<_$UsersListEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UserEntity {
  String get name => throw _privateConstructorUsedError;
  String get avatarUrl => throw _privateConstructorUsedError;
  String? get followersCount => throw _privateConstructorUsedError;
  String get reposUrl => throw _privateConstructorUsedError;
  String get followersUrl => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserEntityCopyWith<UserEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserEntityCopyWith<$Res> {
  factory $UserEntityCopyWith(
          UserEntity value, $Res Function(UserEntity) then) =
      _$UserEntityCopyWithImpl<$Res, UserEntity>;
  @useResult
  $Res call(
      {String name,
      String avatarUrl,
      String? followersCount,
      String reposUrl,
      String followersUrl});
}

/// @nodoc
class _$UserEntityCopyWithImpl<$Res, $Val extends UserEntity>
    implements $UserEntityCopyWith<$Res> {
  _$UserEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? avatarUrl = null,
    Object? followersCount = freezed,
    Object? reposUrl = null,
    Object? followersUrl = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      avatarUrl: null == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String,
      followersCount: freezed == followersCount
          ? _value.followersCount
          : followersCount // ignore: cast_nullable_to_non_nullable
              as String?,
      reposUrl: null == reposUrl
          ? _value.reposUrl
          : reposUrl // ignore: cast_nullable_to_non_nullable
              as String,
      followersUrl: null == followersUrl
          ? _value.followersUrl
          : followersUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserEntityImplCopyWith<$Res>
    implements $UserEntityCopyWith<$Res> {
  factory _$$UserEntityImplCopyWith(
          _$UserEntityImpl value, $Res Function(_$UserEntityImpl) then) =
      __$$UserEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String avatarUrl,
      String? followersCount,
      String reposUrl,
      String followersUrl});
}

/// @nodoc
class __$$UserEntityImplCopyWithImpl<$Res>
    extends _$UserEntityCopyWithImpl<$Res, _$UserEntityImpl>
    implements _$$UserEntityImplCopyWith<$Res> {
  __$$UserEntityImplCopyWithImpl(
      _$UserEntityImpl _value, $Res Function(_$UserEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? avatarUrl = null,
    Object? followersCount = freezed,
    Object? reposUrl = null,
    Object? followersUrl = null,
  }) {
    return _then(_$UserEntityImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      avatarUrl: null == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String,
      followersCount: freezed == followersCount
          ? _value.followersCount
          : followersCount // ignore: cast_nullable_to_non_nullable
              as String?,
      reposUrl: null == reposUrl
          ? _value.reposUrl
          : reposUrl // ignore: cast_nullable_to_non_nullable
              as String,
      followersUrl: null == followersUrl
          ? _value.followersUrl
          : followersUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UserEntityImpl implements _UserEntity {
  const _$UserEntityImpl(
      {this.name = '',
      this.avatarUrl = '',
      this.followersCount,
      this.reposUrl = '',
      this.followersUrl = ''});

  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String avatarUrl;
  @override
  final String? followersCount;
  @override
  @JsonKey()
  final String reposUrl;
  @override
  @JsonKey()
  final String followersUrl;

  @override
  String toString() {
    return 'UserEntity(name: $name, avatarUrl: $avatarUrl, followersCount: $followersCount, reposUrl: $reposUrl, followersUrl: $followersUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserEntityImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.avatarUrl, avatarUrl) ||
                other.avatarUrl == avatarUrl) &&
            (identical(other.followersCount, followersCount) ||
                other.followersCount == followersCount) &&
            (identical(other.reposUrl, reposUrl) ||
                other.reposUrl == reposUrl) &&
            (identical(other.followersUrl, followersUrl) ||
                other.followersUrl == followersUrl));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, name, avatarUrl, followersCount, reposUrl, followersUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserEntityImplCopyWith<_$UserEntityImpl> get copyWith =>
      __$$UserEntityImplCopyWithImpl<_$UserEntityImpl>(this, _$identity);
}

abstract class _UserEntity implements UserEntity {
  const factory _UserEntity(
      {final String name,
      final String avatarUrl,
      final String? followersCount,
      final String reposUrl,
      final String followersUrl}) = _$UserEntityImpl;

  @override
  String get name;
  @override
  String get avatarUrl;
  @override
  String? get followersCount;
  @override
  String get reposUrl;
  @override
  String get followersUrl;
  @override
  @JsonKey(ignore: true)
  _$$UserEntityImplCopyWith<_$UserEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
