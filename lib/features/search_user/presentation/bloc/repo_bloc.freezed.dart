// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'repo_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RepoEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String url) fetchRepos,
    required TResult Function() updateRepos,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String url)? fetchRepos,
    TResult? Function()? updateRepos,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String url)? fetchRepos,
    TResult Function()? updateRepos,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchRepos value) fetchRepos,
    required TResult Function(_UpdateRepos value) updateRepos,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchRepos value)? fetchRepos,
    TResult? Function(_UpdateRepos value)? updateRepos,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchRepos value)? fetchRepos,
    TResult Function(_UpdateRepos value)? updateRepos,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RepoEventCopyWith<$Res> {
  factory $RepoEventCopyWith(RepoEvent value, $Res Function(RepoEvent) then) =
      _$RepoEventCopyWithImpl<$Res, RepoEvent>;
}

/// @nodoc
class _$RepoEventCopyWithImpl<$Res, $Val extends RepoEvent>
    implements $RepoEventCopyWith<$Res> {
  _$RepoEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FetchReposImplCopyWith<$Res> {
  factory _$$FetchReposImplCopyWith(
          _$FetchReposImpl value, $Res Function(_$FetchReposImpl) then) =
      __$$FetchReposImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String url});
}

/// @nodoc
class __$$FetchReposImplCopyWithImpl<$Res>
    extends _$RepoEventCopyWithImpl<$Res, _$FetchReposImpl>
    implements _$$FetchReposImplCopyWith<$Res> {
  __$$FetchReposImplCopyWithImpl(
      _$FetchReposImpl _value, $Res Function(_$FetchReposImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
  }) {
    return _then(_$FetchReposImpl(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FetchReposImpl with DiagnosticableTreeMixin implements _FetchRepos {
  const _$FetchReposImpl({required this.url});

  @override
  final String url;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RepoEvent.fetchRepos(url: $url)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RepoEvent.fetchRepos'))
      ..add(DiagnosticsProperty('url', url));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchReposImpl &&
            (identical(other.url, url) || other.url == url));
  }

  @override
  int get hashCode => Object.hash(runtimeType, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchReposImplCopyWith<_$FetchReposImpl> get copyWith =>
      __$$FetchReposImplCopyWithImpl<_$FetchReposImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String url) fetchRepos,
    required TResult Function() updateRepos,
  }) {
    return fetchRepos(url);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String url)? fetchRepos,
    TResult? Function()? updateRepos,
  }) {
    return fetchRepos?.call(url);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String url)? fetchRepos,
    TResult Function()? updateRepos,
    required TResult orElse(),
  }) {
    if (fetchRepos != null) {
      return fetchRepos(url);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchRepos value) fetchRepos,
    required TResult Function(_UpdateRepos value) updateRepos,
  }) {
    return fetchRepos(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchRepos value)? fetchRepos,
    TResult? Function(_UpdateRepos value)? updateRepos,
  }) {
    return fetchRepos?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchRepos value)? fetchRepos,
    TResult Function(_UpdateRepos value)? updateRepos,
    required TResult orElse(),
  }) {
    if (fetchRepos != null) {
      return fetchRepos(this);
    }
    return orElse();
  }
}

abstract class _FetchRepos implements RepoEvent {
  const factory _FetchRepos({required final String url}) = _$FetchReposImpl;

  String get url;
  @JsonKey(ignore: true)
  _$$FetchReposImplCopyWith<_$FetchReposImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateReposImplCopyWith<$Res> {
  factory _$$UpdateReposImplCopyWith(
          _$UpdateReposImpl value, $Res Function(_$UpdateReposImpl) then) =
      __$$UpdateReposImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UpdateReposImplCopyWithImpl<$Res>
    extends _$RepoEventCopyWithImpl<$Res, _$UpdateReposImpl>
    implements _$$UpdateReposImplCopyWith<$Res> {
  __$$UpdateReposImplCopyWithImpl(
      _$UpdateReposImpl _value, $Res Function(_$UpdateReposImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UpdateReposImpl with DiagnosticableTreeMixin implements _UpdateRepos {
  const _$UpdateReposImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RepoEvent.updateRepos()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'RepoEvent.updateRepos'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UpdateReposImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String url) fetchRepos,
    required TResult Function() updateRepos,
  }) {
    return updateRepos();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String url)? fetchRepos,
    TResult? Function()? updateRepos,
  }) {
    return updateRepos?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String url)? fetchRepos,
    TResult Function()? updateRepos,
    required TResult orElse(),
  }) {
    if (updateRepos != null) {
      return updateRepos();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchRepos value) fetchRepos,
    required TResult Function(_UpdateRepos value) updateRepos,
  }) {
    return updateRepos(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchRepos value)? fetchRepos,
    TResult? Function(_UpdateRepos value)? updateRepos,
  }) {
    return updateRepos?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchRepos value)? fetchRepos,
    TResult Function(_UpdateRepos value)? updateRepos,
    required TResult orElse(),
  }) {
    if (updateRepos != null) {
      return updateRepos(this);
    }
    return orElse();
  }
}

abstract class _UpdateRepos implements RepoEvent {
  const factory _UpdateRepos() = _$UpdateReposImpl;
}

/// @nodoc
mixin _$RepoState {
  String? get nextPage => throw _privateConstructorUsedError;
  String? get previousRequest => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  List<RepoEntity> get reposList => throw _privateConstructorUsedError;
  Object? get failure => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RepoStateCopyWith<RepoState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RepoStateCopyWith<$Res> {
  factory $RepoStateCopyWith(RepoState value, $Res Function(RepoState) then) =
      _$RepoStateCopyWithImpl<$Res, RepoState>;
  @useResult
  $Res call(
      {String? nextPage,
      String? previousRequest,
      bool isLoading,
      List<RepoEntity> reposList,
      Object? failure});
}

/// @nodoc
class _$RepoStateCopyWithImpl<$Res, $Val extends RepoState>
    implements $RepoStateCopyWith<$Res> {
  _$RepoStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nextPage = freezed,
    Object? previousRequest = freezed,
    Object? isLoading = null,
    Object? reposList = null,
    Object? failure = freezed,
  }) {
    return _then(_value.copyWith(
      nextPage: freezed == nextPage
          ? _value.nextPage
          : nextPage // ignore: cast_nullable_to_non_nullable
              as String?,
      previousRequest: freezed == previousRequest
          ? _value.previousRequest
          : previousRequest // ignore: cast_nullable_to_non_nullable
              as String?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      reposList: null == reposList
          ? _value.reposList
          : reposList // ignore: cast_nullable_to_non_nullable
              as List<RepoEntity>,
      failure: freezed == failure ? _value.failure : failure,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RepoStateImplCopyWith<$Res>
    implements $RepoStateCopyWith<$Res> {
  factory _$$RepoStateImplCopyWith(
          _$RepoStateImpl value, $Res Function(_$RepoStateImpl) then) =
      __$$RepoStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? nextPage,
      String? previousRequest,
      bool isLoading,
      List<RepoEntity> reposList,
      Object? failure});
}

/// @nodoc
class __$$RepoStateImplCopyWithImpl<$Res>
    extends _$RepoStateCopyWithImpl<$Res, _$RepoStateImpl>
    implements _$$RepoStateImplCopyWith<$Res> {
  __$$RepoStateImplCopyWithImpl(
      _$RepoStateImpl _value, $Res Function(_$RepoStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nextPage = freezed,
    Object? previousRequest = freezed,
    Object? isLoading = null,
    Object? reposList = null,
    Object? failure = freezed,
  }) {
    return _then(_$RepoStateImpl(
      nextPage: freezed == nextPage
          ? _value.nextPage
          : nextPage // ignore: cast_nullable_to_non_nullable
              as String?,
      previousRequest: freezed == previousRequest
          ? _value.previousRequest
          : previousRequest // ignore: cast_nullable_to_non_nullable
              as String?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      reposList: null == reposList
          ? _value._reposList
          : reposList // ignore: cast_nullable_to_non_nullable
              as List<RepoEntity>,
      failure: freezed == failure ? _value.failure : failure,
    ));
  }
}

/// @nodoc

class _$RepoStateImpl extends _RepoState with DiagnosticableTreeMixin {
  const _$RepoStateImpl(
      {this.nextPage,
      this.previousRequest,
      this.isLoading = false,
      final List<RepoEntity> reposList = const [],
      this.failure})
      : _reposList = reposList,
        super._();

  @override
  final String? nextPage;
  @override
  final String? previousRequest;
  @override
  @JsonKey()
  final bool isLoading;
  final List<RepoEntity> _reposList;
  @override
  @JsonKey()
  List<RepoEntity> get reposList {
    if (_reposList is EqualUnmodifiableListView) return _reposList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_reposList);
  }

  @override
  final Object? failure;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RepoState(nextPage: $nextPage, previousRequest: $previousRequest, isLoading: $isLoading, reposList: $reposList, failure: $failure)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RepoState'))
      ..add(DiagnosticsProperty('nextPage', nextPage))
      ..add(DiagnosticsProperty('previousRequest', previousRequest))
      ..add(DiagnosticsProperty('isLoading', isLoading))
      ..add(DiagnosticsProperty('reposList', reposList))
      ..add(DiagnosticsProperty('failure', failure));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RepoStateImpl &&
            (identical(other.nextPage, nextPage) ||
                other.nextPage == nextPage) &&
            (identical(other.previousRequest, previousRequest) ||
                other.previousRequest == previousRequest) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality()
                .equals(other._reposList, _reposList) &&
            const DeepCollectionEquality().equals(other.failure, failure));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      nextPage,
      previousRequest,
      isLoading,
      const DeepCollectionEquality().hash(_reposList),
      const DeepCollectionEquality().hash(failure));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RepoStateImplCopyWith<_$RepoStateImpl> get copyWith =>
      __$$RepoStateImplCopyWithImpl<_$RepoStateImpl>(this, _$identity);
}

abstract class _RepoState extends RepoState {
  const factory _RepoState(
      {final String? nextPage,
      final String? previousRequest,
      final bool isLoading,
      final List<RepoEntity> reposList,
      final Object? failure}) = _$RepoStateImpl;
  const _RepoState._() : super._();

  @override
  String? get nextPage;
  @override
  String? get previousRequest;
  @override
  bool get isLoading;
  @override
  List<RepoEntity> get reposList;
  @override
  Object? get failure;
  @override
  @JsonKey(ignore: true)
  _$$RepoStateImplCopyWith<_$RepoStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
