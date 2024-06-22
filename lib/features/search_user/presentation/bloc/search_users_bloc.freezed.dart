// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_users_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SearchUsersEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) searchUsers,
    required TResult Function() updateSearchUsers,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query)? searchUsers,
    TResult? Function()? updateSearchUsers,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? searchUsers,
    TResult Function()? updateSearchUsers,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchUsers value) searchUsers,
    required TResult Function(_UpdateSearchUsers value) updateSearchUsers,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SearchUsers value)? searchUsers,
    TResult? Function(_UpdateSearchUsers value)? updateSearchUsers,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchUsers value)? searchUsers,
    TResult Function(_UpdateSearchUsers value)? updateSearchUsers,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchUsersEventCopyWith<$Res> {
  factory $SearchUsersEventCopyWith(
          SearchUsersEvent value, $Res Function(SearchUsersEvent) then) =
      _$SearchUsersEventCopyWithImpl<$Res, SearchUsersEvent>;
}

/// @nodoc
class _$SearchUsersEventCopyWithImpl<$Res, $Val extends SearchUsersEvent>
    implements $SearchUsersEventCopyWith<$Res> {
  _$SearchUsersEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SearchUsersImplCopyWith<$Res> {
  factory _$$SearchUsersImplCopyWith(
          _$SearchUsersImpl value, $Res Function(_$SearchUsersImpl) then) =
      __$$SearchUsersImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String query});
}

/// @nodoc
class __$$SearchUsersImplCopyWithImpl<$Res>
    extends _$SearchUsersEventCopyWithImpl<$Res, _$SearchUsersImpl>
    implements _$$SearchUsersImplCopyWith<$Res> {
  __$$SearchUsersImplCopyWithImpl(
      _$SearchUsersImpl _value, $Res Function(_$SearchUsersImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
  }) {
    return _then(_$SearchUsersImpl(
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchUsersImpl with DiagnosticableTreeMixin implements _SearchUsers {
  const _$SearchUsersImpl({required this.query});

  @override
  final String query;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SearchUsersEvent.searchUsers(query: $query)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SearchUsersEvent.searchUsers'))
      ..add(DiagnosticsProperty('query', query));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchUsersImpl &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchUsersImplCopyWith<_$SearchUsersImpl> get copyWith =>
      __$$SearchUsersImplCopyWithImpl<_$SearchUsersImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) searchUsers,
    required TResult Function() updateSearchUsers,
  }) {
    return searchUsers(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query)? searchUsers,
    TResult? Function()? updateSearchUsers,
  }) {
    return searchUsers?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? searchUsers,
    TResult Function()? updateSearchUsers,
    required TResult orElse(),
  }) {
    if (searchUsers != null) {
      return searchUsers(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchUsers value) searchUsers,
    required TResult Function(_UpdateSearchUsers value) updateSearchUsers,
  }) {
    return searchUsers(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SearchUsers value)? searchUsers,
    TResult? Function(_UpdateSearchUsers value)? updateSearchUsers,
  }) {
    return searchUsers?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchUsers value)? searchUsers,
    TResult Function(_UpdateSearchUsers value)? updateSearchUsers,
    required TResult orElse(),
  }) {
    if (searchUsers != null) {
      return searchUsers(this);
    }
    return orElse();
  }
}

abstract class _SearchUsers implements SearchUsersEvent {
  const factory _SearchUsers({required final String query}) = _$SearchUsersImpl;

  String get query;
  @JsonKey(ignore: true)
  _$$SearchUsersImplCopyWith<_$SearchUsersImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateSearchUsersImplCopyWith<$Res> {
  factory _$$UpdateSearchUsersImplCopyWith(_$UpdateSearchUsersImpl value,
          $Res Function(_$UpdateSearchUsersImpl) then) =
      __$$UpdateSearchUsersImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UpdateSearchUsersImplCopyWithImpl<$Res>
    extends _$SearchUsersEventCopyWithImpl<$Res, _$UpdateSearchUsersImpl>
    implements _$$UpdateSearchUsersImplCopyWith<$Res> {
  __$$UpdateSearchUsersImplCopyWithImpl(_$UpdateSearchUsersImpl _value,
      $Res Function(_$UpdateSearchUsersImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UpdateSearchUsersImpl
    with DiagnosticableTreeMixin
    implements _UpdateSearchUsers {
  const _$UpdateSearchUsersImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SearchUsersEvent.updateSearchUsers()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'SearchUsersEvent.updateSearchUsers'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UpdateSearchUsersImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) searchUsers,
    required TResult Function() updateSearchUsers,
  }) {
    return updateSearchUsers();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query)? searchUsers,
    TResult? Function()? updateSearchUsers,
  }) {
    return updateSearchUsers?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? searchUsers,
    TResult Function()? updateSearchUsers,
    required TResult orElse(),
  }) {
    if (updateSearchUsers != null) {
      return updateSearchUsers();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchUsers value) searchUsers,
    required TResult Function(_UpdateSearchUsers value) updateSearchUsers,
  }) {
    return updateSearchUsers(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SearchUsers value)? searchUsers,
    TResult? Function(_UpdateSearchUsers value)? updateSearchUsers,
  }) {
    return updateSearchUsers?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchUsers value)? searchUsers,
    TResult Function(_UpdateSearchUsers value)? updateSearchUsers,
    required TResult orElse(),
  }) {
    if (updateSearchUsers != null) {
      return updateSearchUsers(this);
    }
    return orElse();
  }
}

abstract class _UpdateSearchUsers implements SearchUsersEvent {
  const factory _UpdateSearchUsers() = _$UpdateSearchUsersImpl;
}

/// @nodoc
mixin _$SearchUsersState {
  String? get nextPage => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  List<UserEntity> get usersList => throw _privateConstructorUsedError;
  Object? get failure => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchUsersStateCopyWith<SearchUsersState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchUsersStateCopyWith<$Res> {
  factory $SearchUsersStateCopyWith(
          SearchUsersState value, $Res Function(SearchUsersState) then) =
      _$SearchUsersStateCopyWithImpl<$Res, SearchUsersState>;
  @useResult
  $Res call(
      {String? nextPage,
      bool isLoading,
      List<UserEntity> usersList,
      Object? failure});
}

/// @nodoc
class _$SearchUsersStateCopyWithImpl<$Res, $Val extends SearchUsersState>
    implements $SearchUsersStateCopyWith<$Res> {
  _$SearchUsersStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nextPage = freezed,
    Object? isLoading = null,
    Object? usersList = null,
    Object? failure = freezed,
  }) {
    return _then(_value.copyWith(
      nextPage: freezed == nextPage
          ? _value.nextPage
          : nextPage // ignore: cast_nullable_to_non_nullable
              as String?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      usersList: null == usersList
          ? _value.usersList
          : usersList // ignore: cast_nullable_to_non_nullable
              as List<UserEntity>,
      failure: freezed == failure ? _value.failure : failure,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SearchUsersStateImplCopyWith<$Res>
    implements $SearchUsersStateCopyWith<$Res> {
  factory _$$SearchUsersStateImplCopyWith(_$SearchUsersStateImpl value,
          $Res Function(_$SearchUsersStateImpl) then) =
      __$$SearchUsersStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? nextPage,
      bool isLoading,
      List<UserEntity> usersList,
      Object? failure});
}

/// @nodoc
class __$$SearchUsersStateImplCopyWithImpl<$Res>
    extends _$SearchUsersStateCopyWithImpl<$Res, _$SearchUsersStateImpl>
    implements _$$SearchUsersStateImplCopyWith<$Res> {
  __$$SearchUsersStateImplCopyWithImpl(_$SearchUsersStateImpl _value,
      $Res Function(_$SearchUsersStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nextPage = freezed,
    Object? isLoading = null,
    Object? usersList = null,
    Object? failure = freezed,
  }) {
    return _then(_$SearchUsersStateImpl(
      nextPage: freezed == nextPage
          ? _value.nextPage
          : nextPage // ignore: cast_nullable_to_non_nullable
              as String?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      usersList: null == usersList
          ? _value._usersList
          : usersList // ignore: cast_nullable_to_non_nullable
              as List<UserEntity>,
      failure: freezed == failure ? _value.failure : failure,
    ));
  }
}

/// @nodoc

class _$SearchUsersStateImpl extends _SearchUsersState
    with DiagnosticableTreeMixin {
  const _$SearchUsersStateImpl(
      {this.nextPage,
      this.isLoading = false,
      final List<UserEntity> usersList = const [],
      this.failure})
      : _usersList = usersList,
        super._();

  @override
  final String? nextPage;
  @override
  @JsonKey()
  final bool isLoading;
  final List<UserEntity> _usersList;
  @override
  @JsonKey()
  List<UserEntity> get usersList {
    if (_usersList is EqualUnmodifiableListView) return _usersList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_usersList);
  }

  @override
  final Object? failure;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SearchUsersState(nextPage: $nextPage, isLoading: $isLoading, usersList: $usersList, failure: $failure)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SearchUsersState'))
      ..add(DiagnosticsProperty('nextPage', nextPage))
      ..add(DiagnosticsProperty('isLoading', isLoading))
      ..add(DiagnosticsProperty('usersList', usersList))
      ..add(DiagnosticsProperty('failure', failure));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchUsersStateImpl &&
            (identical(other.nextPage, nextPage) ||
                other.nextPage == nextPage) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality()
                .equals(other._usersList, _usersList) &&
            const DeepCollectionEquality().equals(other.failure, failure));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      nextPage,
      isLoading,
      const DeepCollectionEquality().hash(_usersList),
      const DeepCollectionEquality().hash(failure));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchUsersStateImplCopyWith<_$SearchUsersStateImpl> get copyWith =>
      __$$SearchUsersStateImplCopyWithImpl<_$SearchUsersStateImpl>(
          this, _$identity);
}

abstract class _SearchUsersState extends SearchUsersState {
  const factory _SearchUsersState(
      {final String? nextPage,
      final bool isLoading,
      final List<UserEntity> usersList,
      final Object? failure}) = _$SearchUsersStateImpl;
  const _SearchUsersState._() : super._();

  @override
  String? get nextPage;
  @override
  bool get isLoading;
  @override
  List<UserEntity> get usersList;
  @override
  Object? get failure;
  @override
  @JsonKey(ignore: true)
  _$$SearchUsersStateImplCopyWith<_$SearchUsersStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
