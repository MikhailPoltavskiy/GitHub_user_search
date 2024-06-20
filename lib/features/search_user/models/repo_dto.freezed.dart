// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'repo_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RepoDto _$RepoDtoFromJson(Map<String, dynamic> json) {
  return _RepoDto.fromJson(json);
}

/// @nodoc
mixin _$RepoDto {
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'description')
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'pushed_at')
  @DateTimeConverter()
  DateTime? get commitAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'default_branch')
  String get defaultBranch => throw _privateConstructorUsedError;
  @JsonKey(name: 'forks_count')
  int get forksCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'stargazers_count')
  int get starsCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'language')
  String get machineCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RepoDtoCopyWith<RepoDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RepoDtoCopyWith<$Res> {
  factory $RepoDtoCopyWith(RepoDto value, $Res Function(RepoDto) then) =
      _$RepoDtoCopyWithImpl<$Res, RepoDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'name') String name,
      @JsonKey(name: 'description') String description,
      @JsonKey(name: 'pushed_at') @DateTimeConverter() DateTime? commitAt,
      @JsonKey(name: 'default_branch') String defaultBranch,
      @JsonKey(name: 'forks_count') int forksCount,
      @JsonKey(name: 'stargazers_count') int starsCount,
      @JsonKey(name: 'language') String machineCode});
}

/// @nodoc
class _$RepoDtoCopyWithImpl<$Res, $Val extends RepoDto>
    implements $RepoDtoCopyWith<$Res> {
  _$RepoDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = null,
    Object? commitAt = freezed,
    Object? defaultBranch = null,
    Object? forksCount = null,
    Object? starsCount = null,
    Object? machineCode = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      commitAt: freezed == commitAt
          ? _value.commitAt
          : commitAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      defaultBranch: null == defaultBranch
          ? _value.defaultBranch
          : defaultBranch // ignore: cast_nullable_to_non_nullable
              as String,
      forksCount: null == forksCount
          ? _value.forksCount
          : forksCount // ignore: cast_nullable_to_non_nullable
              as int,
      starsCount: null == starsCount
          ? _value.starsCount
          : starsCount // ignore: cast_nullable_to_non_nullable
              as int,
      machineCode: null == machineCode
          ? _value.machineCode
          : machineCode // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RepoDtoImplCopyWith<$Res> implements $RepoDtoCopyWith<$Res> {
  factory _$$RepoDtoImplCopyWith(
          _$RepoDtoImpl value, $Res Function(_$RepoDtoImpl) then) =
      __$$RepoDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'name') String name,
      @JsonKey(name: 'description') String description,
      @JsonKey(name: 'pushed_at') @DateTimeConverter() DateTime? commitAt,
      @JsonKey(name: 'default_branch') String defaultBranch,
      @JsonKey(name: 'forks_count') int forksCount,
      @JsonKey(name: 'stargazers_count') int starsCount,
      @JsonKey(name: 'language') String machineCode});
}

/// @nodoc
class __$$RepoDtoImplCopyWithImpl<$Res>
    extends _$RepoDtoCopyWithImpl<$Res, _$RepoDtoImpl>
    implements _$$RepoDtoImplCopyWith<$Res> {
  __$$RepoDtoImplCopyWithImpl(
      _$RepoDtoImpl _value, $Res Function(_$RepoDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = null,
    Object? commitAt = freezed,
    Object? defaultBranch = null,
    Object? forksCount = null,
    Object? starsCount = null,
    Object? machineCode = null,
  }) {
    return _then(_$RepoDtoImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      commitAt: freezed == commitAt
          ? _value.commitAt
          : commitAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      defaultBranch: null == defaultBranch
          ? _value.defaultBranch
          : defaultBranch // ignore: cast_nullable_to_non_nullable
              as String,
      forksCount: null == forksCount
          ? _value.forksCount
          : forksCount // ignore: cast_nullable_to_non_nullable
              as int,
      starsCount: null == starsCount
          ? _value.starsCount
          : starsCount // ignore: cast_nullable_to_non_nullable
              as int,
      machineCode: null == machineCode
          ? _value.machineCode
          : machineCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RepoDtoImpl extends _RepoDto {
  const _$RepoDtoImpl(
      {@JsonKey(name: 'name') this.name = '',
      @JsonKey(name: 'description') this.description = '',
      @JsonKey(name: 'pushed_at') @DateTimeConverter() this.commitAt,
      @JsonKey(name: 'default_branch') this.defaultBranch = '',
      @JsonKey(name: 'forks_count') this.forksCount = 0,
      @JsonKey(name: 'stargazers_count') this.starsCount = 0,
      @JsonKey(name: 'language') this.machineCode = ''})
      : super._();

  factory _$RepoDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$RepoDtoImplFromJson(json);

  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'description')
  final String description;
  @override
  @JsonKey(name: 'pushed_at')
  @DateTimeConverter()
  final DateTime? commitAt;
  @override
  @JsonKey(name: 'default_branch')
  final String defaultBranch;
  @override
  @JsonKey(name: 'forks_count')
  final int forksCount;
  @override
  @JsonKey(name: 'stargazers_count')
  final int starsCount;
  @override
  @JsonKey(name: 'language')
  final String machineCode;

  @override
  String toString() {
    return 'RepoDto(name: $name, description: $description, commitAt: $commitAt, defaultBranch: $defaultBranch, forksCount: $forksCount, starsCount: $starsCount, machineCode: $machineCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RepoDtoImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.commitAt, commitAt) ||
                other.commitAt == commitAt) &&
            (identical(other.defaultBranch, defaultBranch) ||
                other.defaultBranch == defaultBranch) &&
            (identical(other.forksCount, forksCount) ||
                other.forksCount == forksCount) &&
            (identical(other.starsCount, starsCount) ||
                other.starsCount == starsCount) &&
            (identical(other.machineCode, machineCode) ||
                other.machineCode == machineCode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, description, commitAt,
      defaultBranch, forksCount, starsCount, machineCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RepoDtoImplCopyWith<_$RepoDtoImpl> get copyWith =>
      __$$RepoDtoImplCopyWithImpl<_$RepoDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RepoDtoImplToJson(
      this,
    );
  }
}

abstract class _RepoDto extends RepoDto {
  const factory _RepoDto(
      {@JsonKey(name: 'name') final String name,
      @JsonKey(name: 'description') final String description,
      @JsonKey(name: 'pushed_at') @DateTimeConverter() final DateTime? commitAt,
      @JsonKey(name: 'default_branch') final String defaultBranch,
      @JsonKey(name: 'forks_count') final int forksCount,
      @JsonKey(name: 'stargazers_count') final int starsCount,
      @JsonKey(name: 'language') final String machineCode}) = _$RepoDtoImpl;
  const _RepoDto._() : super._();

  factory _RepoDto.fromJson(Map<String, dynamic> json) = _$RepoDtoImpl.fromJson;

  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'description')
  String get description;
  @override
  @JsonKey(name: 'pushed_at')
  @DateTimeConverter()
  DateTime? get commitAt;
  @override
  @JsonKey(name: 'default_branch')
  String get defaultBranch;
  @override
  @JsonKey(name: 'forks_count')
  int get forksCount;
  @override
  @JsonKey(name: 'stargazers_count')
  int get starsCount;
  @override
  @JsonKey(name: 'language')
  String get machineCode;
  @override
  @JsonKey(ignore: true)
  _$$RepoDtoImplCopyWith<_$RepoDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
