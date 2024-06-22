// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'repo_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ReposListEntity {
  String? get nextPage => throw _privateConstructorUsedError;
  List<RepoEntity> get reposListEntity => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ReposListEntityCopyWith<ReposListEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReposListEntityCopyWith<$Res> {
  factory $ReposListEntityCopyWith(
          ReposListEntity value, $Res Function(ReposListEntity) then) =
      _$ReposListEntityCopyWithImpl<$Res, ReposListEntity>;
  @useResult
  $Res call({String? nextPage, List<RepoEntity> reposListEntity});
}

/// @nodoc
class _$ReposListEntityCopyWithImpl<$Res, $Val extends ReposListEntity>
    implements $ReposListEntityCopyWith<$Res> {
  _$ReposListEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nextPage = freezed,
    Object? reposListEntity = null,
  }) {
    return _then(_value.copyWith(
      nextPage: freezed == nextPage
          ? _value.nextPage
          : nextPage // ignore: cast_nullable_to_non_nullable
              as String?,
      reposListEntity: null == reposListEntity
          ? _value.reposListEntity
          : reposListEntity // ignore: cast_nullable_to_non_nullable
              as List<RepoEntity>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReposListEntityImplCopyWith<$Res>
    implements $ReposListEntityCopyWith<$Res> {
  factory _$$ReposListEntityImplCopyWith(_$ReposListEntityImpl value,
          $Res Function(_$ReposListEntityImpl) then) =
      __$$ReposListEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? nextPage, List<RepoEntity> reposListEntity});
}

/// @nodoc
class __$$ReposListEntityImplCopyWithImpl<$Res>
    extends _$ReposListEntityCopyWithImpl<$Res, _$ReposListEntityImpl>
    implements _$$ReposListEntityImplCopyWith<$Res> {
  __$$ReposListEntityImplCopyWithImpl(
      _$ReposListEntityImpl _value, $Res Function(_$ReposListEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nextPage = freezed,
    Object? reposListEntity = null,
  }) {
    return _then(_$ReposListEntityImpl(
      nextPage: freezed == nextPage
          ? _value.nextPage
          : nextPage // ignore: cast_nullable_to_non_nullable
              as String?,
      reposListEntity: null == reposListEntity
          ? _value._reposListEntity
          : reposListEntity // ignore: cast_nullable_to_non_nullable
              as List<RepoEntity>,
    ));
  }
}

/// @nodoc

class _$ReposListEntityImpl implements _ReposListEntity {
  const _$ReposListEntityImpl(
      {this.nextPage, final List<RepoEntity> reposListEntity = const []})
      : _reposListEntity = reposListEntity;

  @override
  final String? nextPage;
  final List<RepoEntity> _reposListEntity;
  @override
  @JsonKey()
  List<RepoEntity> get reposListEntity {
    if (_reposListEntity is EqualUnmodifiableListView) return _reposListEntity;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_reposListEntity);
  }

  @override
  String toString() {
    return 'ReposListEntity(nextPage: $nextPage, reposListEntity: $reposListEntity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReposListEntityImpl &&
            (identical(other.nextPage, nextPage) ||
                other.nextPage == nextPage) &&
            const DeepCollectionEquality()
                .equals(other._reposListEntity, _reposListEntity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, nextPage,
      const DeepCollectionEquality().hash(_reposListEntity));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReposListEntityImplCopyWith<_$ReposListEntityImpl> get copyWith =>
      __$$ReposListEntityImplCopyWithImpl<_$ReposListEntityImpl>(
          this, _$identity);
}

abstract class _ReposListEntity implements ReposListEntity {
  const factory _ReposListEntity(
      {final String? nextPage,
      final List<RepoEntity> reposListEntity}) = _$ReposListEntityImpl;

  @override
  String? get nextPage;
  @override
  List<RepoEntity> get reposListEntity;
  @override
  @JsonKey(ignore: true)
  _$$ReposListEntityImplCopyWith<_$ReposListEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RepoEntity {
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  DateTime? get commitAt => throw _privateConstructorUsedError;
  String get defaultBranch => throw _privateConstructorUsedError;
  int get forksCount => throw _privateConstructorUsedError;
  int get starsCount => throw _privateConstructorUsedError;
  String get machineCode => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RepoEntityCopyWith<RepoEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RepoEntityCopyWith<$Res> {
  factory $RepoEntityCopyWith(
          RepoEntity value, $Res Function(RepoEntity) then) =
      _$RepoEntityCopyWithImpl<$Res, RepoEntity>;
  @useResult
  $Res call(
      {String name,
      String description,
      DateTime? commitAt,
      String defaultBranch,
      int forksCount,
      int starsCount,
      String machineCode});
}

/// @nodoc
class _$RepoEntityCopyWithImpl<$Res, $Val extends RepoEntity>
    implements $RepoEntityCopyWith<$Res> {
  _$RepoEntityCopyWithImpl(this._value, this._then);

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
abstract class _$$RepoEntityImplCopyWith<$Res>
    implements $RepoEntityCopyWith<$Res> {
  factory _$$RepoEntityImplCopyWith(
          _$RepoEntityImpl value, $Res Function(_$RepoEntityImpl) then) =
      __$$RepoEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String description,
      DateTime? commitAt,
      String defaultBranch,
      int forksCount,
      int starsCount,
      String machineCode});
}

/// @nodoc
class __$$RepoEntityImplCopyWithImpl<$Res>
    extends _$RepoEntityCopyWithImpl<$Res, _$RepoEntityImpl>
    implements _$$RepoEntityImplCopyWith<$Res> {
  __$$RepoEntityImplCopyWithImpl(
      _$RepoEntityImpl _value, $Res Function(_$RepoEntityImpl) _then)
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
    return _then(_$RepoEntityImpl(
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

class _$RepoEntityImpl implements _RepoEntity {
  const _$RepoEntityImpl(
      {this.name = '',
      this.description = '',
      this.commitAt,
      this.defaultBranch = '',
      this.forksCount = 0,
      this.starsCount = 0,
      this.machineCode = ''});

  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String description;
  @override
  final DateTime? commitAt;
  @override
  @JsonKey()
  final String defaultBranch;
  @override
  @JsonKey()
  final int forksCount;
  @override
  @JsonKey()
  final int starsCount;
  @override
  @JsonKey()
  final String machineCode;

  @override
  String toString() {
    return 'RepoEntity(name: $name, description: $description, commitAt: $commitAt, defaultBranch: $defaultBranch, forksCount: $forksCount, starsCount: $starsCount, machineCode: $machineCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RepoEntityImpl &&
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

  @override
  int get hashCode => Object.hash(runtimeType, name, description, commitAt,
      defaultBranch, forksCount, starsCount, machineCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RepoEntityImplCopyWith<_$RepoEntityImpl> get copyWith =>
      __$$RepoEntityImplCopyWithImpl<_$RepoEntityImpl>(this, _$identity);
}

abstract class _RepoEntity implements RepoEntity {
  const factory _RepoEntity(
      {final String name,
      final String description,
      final DateTime? commitAt,
      final String defaultBranch,
      final int forksCount,
      final int starsCount,
      final String machineCode}) = _$RepoEntityImpl;

  @override
  String get name;
  @override
  String get description;
  @override
  DateTime? get commitAt;
  @override
  String get defaultBranch;
  @override
  int get forksCount;
  @override
  int get starsCount;
  @override
  String get machineCode;
  @override
  @JsonKey(ignore: true)
  _$$RepoEntityImplCopyWith<_$RepoEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
