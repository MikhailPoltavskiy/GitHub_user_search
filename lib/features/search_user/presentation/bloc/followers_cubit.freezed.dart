// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'followers_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FollowersState {
  String get countFollowers => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  Object? get failure => throw _privateConstructorUsedError;
  bool get isFirstBoot => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FollowersStateCopyWith<FollowersState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FollowersStateCopyWith<$Res> {
  factory $FollowersStateCopyWith(
          FollowersState value, $Res Function(FollowersState) then) =
      _$FollowersStateCopyWithImpl<$Res, FollowersState>;
  @useResult
  $Res call(
      {String countFollowers,
      bool isLoading,
      Object? failure,
      bool isFirstBoot});
}

/// @nodoc
class _$FollowersStateCopyWithImpl<$Res, $Val extends FollowersState>
    implements $FollowersStateCopyWith<$Res> {
  _$FollowersStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? countFollowers = null,
    Object? isLoading = null,
    Object? failure = freezed,
    Object? isFirstBoot = null,
  }) {
    return _then(_value.copyWith(
      countFollowers: null == countFollowers
          ? _value.countFollowers
          : countFollowers // ignore: cast_nullable_to_non_nullable
              as String,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      failure: freezed == failure ? _value.failure : failure,
      isFirstBoot: null == isFirstBoot
          ? _value.isFirstBoot
          : isFirstBoot // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FollowersStateImplCopyWith<$Res>
    implements $FollowersStateCopyWith<$Res> {
  factory _$$FollowersStateImplCopyWith(_$FollowersStateImpl value,
          $Res Function(_$FollowersStateImpl) then) =
      __$$FollowersStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String countFollowers,
      bool isLoading,
      Object? failure,
      bool isFirstBoot});
}

/// @nodoc
class __$$FollowersStateImplCopyWithImpl<$Res>
    extends _$FollowersStateCopyWithImpl<$Res, _$FollowersStateImpl>
    implements _$$FollowersStateImplCopyWith<$Res> {
  __$$FollowersStateImplCopyWithImpl(
      _$FollowersStateImpl _value, $Res Function(_$FollowersStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? countFollowers = null,
    Object? isLoading = null,
    Object? failure = freezed,
    Object? isFirstBoot = null,
  }) {
    return _then(_$FollowersStateImpl(
      countFollowers: null == countFollowers
          ? _value.countFollowers
          : countFollowers // ignore: cast_nullable_to_non_nullable
              as String,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      failure: freezed == failure ? _value.failure : failure,
      isFirstBoot: null == isFirstBoot
          ? _value.isFirstBoot
          : isFirstBoot // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$FollowersStateImpl extends _FollowersState
    with DiagnosticableTreeMixin {
  const _$FollowersStateImpl(
      {this.countFollowers = '0',
      this.isLoading = false,
      this.failure,
      this.isFirstBoot = true})
      : super._();

  @override
  @JsonKey()
  final String countFollowers;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  final Object? failure;
  @override
  @JsonKey()
  final bool isFirstBoot;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FollowersState(countFollowers: $countFollowers, isLoading: $isLoading, failure: $failure, isFirstBoot: $isFirstBoot)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'FollowersState'))
      ..add(DiagnosticsProperty('countFollowers', countFollowers))
      ..add(DiagnosticsProperty('isLoading', isLoading))
      ..add(DiagnosticsProperty('failure', failure))
      ..add(DiagnosticsProperty('isFirstBoot', isFirstBoot));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FollowersStateImpl &&
            (identical(other.countFollowers, countFollowers) ||
                other.countFollowers == countFollowers) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality().equals(other.failure, failure) &&
            (identical(other.isFirstBoot, isFirstBoot) ||
                other.isFirstBoot == isFirstBoot));
  }

  @override
  int get hashCode => Object.hash(runtimeType, countFollowers, isLoading,
      const DeepCollectionEquality().hash(failure), isFirstBoot);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FollowersStateImplCopyWith<_$FollowersStateImpl> get copyWith =>
      __$$FollowersStateImplCopyWithImpl<_$FollowersStateImpl>(
          this, _$identity);
}

abstract class _FollowersState extends FollowersState {
  const factory _FollowersState(
      {final String countFollowers,
      final bool isLoading,
      final Object? failure,
      final bool isFirstBoot}) = _$FollowersStateImpl;
  const _FollowersState._() : super._();

  @override
  String get countFollowers;
  @override
  bool get isLoading;
  @override
  Object? get failure;
  @override
  bool get isFirstBoot;
  @override
  @JsonKey(ignore: true)
  _$$FollowersStateImplCopyWith<_$FollowersStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
