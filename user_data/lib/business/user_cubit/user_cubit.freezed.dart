// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserState {
  List<User> get users => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  String get error => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<User> users, String message, String error)
        initial,
    required TResult Function(List<User> users, String message, String error)
        loading,
    required TResult Function(List<User> users, String message, String error)
        loaded,
    required TResult Function(List<User> users, String message, String error)
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<User> users, String message, String error)? initial,
    TResult? Function(List<User> users, String message, String error)? loading,
    TResult? Function(List<User> users, String message, String error)? loaded,
    TResult? Function(List<User> users, String message, String error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<User> users, String message, String error)? initial,
    TResult Function(List<User> users, String message, String error)? loading,
    TResult Function(List<User> users, String message, String error)? loaded,
    TResult Function(List<User> users, String message, String error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserStateInitial value) initial,
    required TResult Function(UserStateLoading value) loading,
    required TResult Function(UserStateLoaded value) loaded,
    required TResult Function(UserStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserStateInitial value)? initial,
    TResult? Function(UserStateLoading value)? loading,
    TResult? Function(UserStateLoaded value)? loaded,
    TResult? Function(UserStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserStateInitial value)? initial,
    TResult Function(UserStateLoading value)? loading,
    TResult Function(UserStateLoaded value)? loaded,
    TResult Function(UserStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserStateCopyWith<UserState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserStateCopyWith<$Res> {
  factory $UserStateCopyWith(UserState value, $Res Function(UserState) then) =
      _$UserStateCopyWithImpl<$Res, UserState>;
  @useResult
  $Res call({List<User> users, String message, String error});
}

/// @nodoc
class _$UserStateCopyWithImpl<$Res, $Val extends UserState>
    implements $UserStateCopyWith<$Res> {
  _$UserStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? users = null,
    Object? message = null,
    Object? error = null,
  }) {
    return _then(_value.copyWith(
      users: null == users
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as List<User>,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserStateInitialCopyWith<$Res>
    implements $UserStateCopyWith<$Res> {
  factory _$$UserStateInitialCopyWith(
          _$UserStateInitial value, $Res Function(_$UserStateInitial) then) =
      __$$UserStateInitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<User> users, String message, String error});
}

/// @nodoc
class __$$UserStateInitialCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$UserStateInitial>
    implements _$$UserStateInitialCopyWith<$Res> {
  __$$UserStateInitialCopyWithImpl(
      _$UserStateInitial _value, $Res Function(_$UserStateInitial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? users = null,
    Object? message = null,
    Object? error = null,
  }) {
    return _then(_$UserStateInitial(
      users: null == users
          ? _value._users
          : users // ignore: cast_nullable_to_non_nullable
              as List<User>,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UserStateInitial implements UserStateInitial {
  const _$UserStateInitial(
      {final List<User> users = const [], this.message = '', this.error = ''})
      : _users = users;

  final List<User> _users;
  @override
  @JsonKey()
  List<User> get users {
    if (_users is EqualUnmodifiableListView) return _users;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_users);
  }

  @override
  @JsonKey()
  final String message;
  @override
  @JsonKey()
  final String error;

  @override
  String toString() {
    return 'UserState.initial(users: $users, message: $message, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserStateInitial &&
            const DeepCollectionEquality().equals(other._users, _users) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_users), message, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserStateInitialCopyWith<_$UserStateInitial> get copyWith =>
      __$$UserStateInitialCopyWithImpl<_$UserStateInitial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<User> users, String message, String error)
        initial,
    required TResult Function(List<User> users, String message, String error)
        loading,
    required TResult Function(List<User> users, String message, String error)
        loaded,
    required TResult Function(List<User> users, String message, String error)
        error,
  }) {
    return initial(users, message, this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<User> users, String message, String error)? initial,
    TResult? Function(List<User> users, String message, String error)? loading,
    TResult? Function(List<User> users, String message, String error)? loaded,
    TResult? Function(List<User> users, String message, String error)? error,
  }) {
    return initial?.call(users, message, this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<User> users, String message, String error)? initial,
    TResult Function(List<User> users, String message, String error)? loading,
    TResult Function(List<User> users, String message, String error)? loaded,
    TResult Function(List<User> users, String message, String error)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(users, message, this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserStateInitial value) initial,
    required TResult Function(UserStateLoading value) loading,
    required TResult Function(UserStateLoaded value) loaded,
    required TResult Function(UserStateError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserStateInitial value)? initial,
    TResult? Function(UserStateLoading value)? loading,
    TResult? Function(UserStateLoaded value)? loaded,
    TResult? Function(UserStateError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserStateInitial value)? initial,
    TResult Function(UserStateLoading value)? loading,
    TResult Function(UserStateLoaded value)? loaded,
    TResult Function(UserStateError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class UserStateInitial implements UserState {
  const factory UserStateInitial(
      {final List<User> users,
      final String message,
      final String error}) = _$UserStateInitial;

  @override
  List<User> get users;
  @override
  String get message;
  @override
  String get error;
  @override
  @JsonKey(ignore: true)
  _$$UserStateInitialCopyWith<_$UserStateInitial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserStateLoadingCopyWith<$Res>
    implements $UserStateCopyWith<$Res> {
  factory _$$UserStateLoadingCopyWith(
          _$UserStateLoading value, $Res Function(_$UserStateLoading) then) =
      __$$UserStateLoadingCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<User> users, String message, String error});
}

/// @nodoc
class __$$UserStateLoadingCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$UserStateLoading>
    implements _$$UserStateLoadingCopyWith<$Res> {
  __$$UserStateLoadingCopyWithImpl(
      _$UserStateLoading _value, $Res Function(_$UserStateLoading) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? users = null,
    Object? message = null,
    Object? error = null,
  }) {
    return _then(_$UserStateLoading(
      users: null == users
          ? _value._users
          : users // ignore: cast_nullable_to_non_nullable
              as List<User>,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UserStateLoading implements UserStateLoading {
  const _$UserStateLoading(
      {final List<User> users = const [], this.message = '', this.error = ''})
      : _users = users;

  final List<User> _users;
  @override
  @JsonKey()
  List<User> get users {
    if (_users is EqualUnmodifiableListView) return _users;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_users);
  }

  @override
  @JsonKey()
  final String message;
  @override
  @JsonKey()
  final String error;

  @override
  String toString() {
    return 'UserState.loading(users: $users, message: $message, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserStateLoading &&
            const DeepCollectionEquality().equals(other._users, _users) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_users), message, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserStateLoadingCopyWith<_$UserStateLoading> get copyWith =>
      __$$UserStateLoadingCopyWithImpl<_$UserStateLoading>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<User> users, String message, String error)
        initial,
    required TResult Function(List<User> users, String message, String error)
        loading,
    required TResult Function(List<User> users, String message, String error)
        loaded,
    required TResult Function(List<User> users, String message, String error)
        error,
  }) {
    return loading(users, message, this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<User> users, String message, String error)? initial,
    TResult? Function(List<User> users, String message, String error)? loading,
    TResult? Function(List<User> users, String message, String error)? loaded,
    TResult? Function(List<User> users, String message, String error)? error,
  }) {
    return loading?.call(users, message, this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<User> users, String message, String error)? initial,
    TResult Function(List<User> users, String message, String error)? loading,
    TResult Function(List<User> users, String message, String error)? loaded,
    TResult Function(List<User> users, String message, String error)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(users, message, this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserStateInitial value) initial,
    required TResult Function(UserStateLoading value) loading,
    required TResult Function(UserStateLoaded value) loaded,
    required TResult Function(UserStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserStateInitial value)? initial,
    TResult? Function(UserStateLoading value)? loading,
    TResult? Function(UserStateLoaded value)? loaded,
    TResult? Function(UserStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserStateInitial value)? initial,
    TResult Function(UserStateLoading value)? loading,
    TResult Function(UserStateLoaded value)? loaded,
    TResult Function(UserStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class UserStateLoading implements UserState {
  const factory UserStateLoading(
      {final List<User> users,
      final String message,
      final String error}) = _$UserStateLoading;

  @override
  List<User> get users;
  @override
  String get message;
  @override
  String get error;
  @override
  @JsonKey(ignore: true)
  _$$UserStateLoadingCopyWith<_$UserStateLoading> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserStateLoadedCopyWith<$Res>
    implements $UserStateCopyWith<$Res> {
  factory _$$UserStateLoadedCopyWith(
          _$UserStateLoaded value, $Res Function(_$UserStateLoaded) then) =
      __$$UserStateLoadedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<User> users, String message, String error});
}

/// @nodoc
class __$$UserStateLoadedCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$UserStateLoaded>
    implements _$$UserStateLoadedCopyWith<$Res> {
  __$$UserStateLoadedCopyWithImpl(
      _$UserStateLoaded _value, $Res Function(_$UserStateLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? users = null,
    Object? message = null,
    Object? error = null,
  }) {
    return _then(_$UserStateLoaded(
      users: null == users
          ? _value._users
          : users // ignore: cast_nullable_to_non_nullable
              as List<User>,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UserStateLoaded implements UserStateLoaded {
  const _$UserStateLoaded(
      {required final List<User> users, this.message = '', this.error = ''})
      : _users = users;

  final List<User> _users;
  @override
  List<User> get users {
    if (_users is EqualUnmodifiableListView) return _users;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_users);
  }

  @override
  @JsonKey()
  final String message;
  @override
  @JsonKey()
  final String error;

  @override
  String toString() {
    return 'UserState.loaded(users: $users, message: $message, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserStateLoaded &&
            const DeepCollectionEquality().equals(other._users, _users) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_users), message, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserStateLoadedCopyWith<_$UserStateLoaded> get copyWith =>
      __$$UserStateLoadedCopyWithImpl<_$UserStateLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<User> users, String message, String error)
        initial,
    required TResult Function(List<User> users, String message, String error)
        loading,
    required TResult Function(List<User> users, String message, String error)
        loaded,
    required TResult Function(List<User> users, String message, String error)
        error,
  }) {
    return loaded(users, message, this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<User> users, String message, String error)? initial,
    TResult? Function(List<User> users, String message, String error)? loading,
    TResult? Function(List<User> users, String message, String error)? loaded,
    TResult? Function(List<User> users, String message, String error)? error,
  }) {
    return loaded?.call(users, message, this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<User> users, String message, String error)? initial,
    TResult Function(List<User> users, String message, String error)? loading,
    TResult Function(List<User> users, String message, String error)? loaded,
    TResult Function(List<User> users, String message, String error)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(users, message, this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserStateInitial value) initial,
    required TResult Function(UserStateLoading value) loading,
    required TResult Function(UserStateLoaded value) loaded,
    required TResult Function(UserStateError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserStateInitial value)? initial,
    TResult? Function(UserStateLoading value)? loading,
    TResult? Function(UserStateLoaded value)? loaded,
    TResult? Function(UserStateError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserStateInitial value)? initial,
    TResult Function(UserStateLoading value)? loading,
    TResult Function(UserStateLoaded value)? loaded,
    TResult Function(UserStateError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class UserStateLoaded implements UserState {
  const factory UserStateLoaded(
      {required final List<User> users,
      final String message,
      final String error}) = _$UserStateLoaded;

  @override
  List<User> get users;
  @override
  String get message;
  @override
  String get error;
  @override
  @JsonKey(ignore: true)
  _$$UserStateLoadedCopyWith<_$UserStateLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserStateErrorCopyWith<$Res>
    implements $UserStateCopyWith<$Res> {
  factory _$$UserStateErrorCopyWith(
          _$UserStateError value, $Res Function(_$UserStateError) then) =
      __$$UserStateErrorCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<User> users, String message, String error});
}

/// @nodoc
class __$$UserStateErrorCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$UserStateError>
    implements _$$UserStateErrorCopyWith<$Res> {
  __$$UserStateErrorCopyWithImpl(
      _$UserStateError _value, $Res Function(_$UserStateError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? users = null,
    Object? message = null,
    Object? error = null,
  }) {
    return _then(_$UserStateError(
      users: null == users
          ? _value._users
          : users // ignore: cast_nullable_to_non_nullable
              as List<User>,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UserStateError implements UserStateError {
  const _$UserStateError(
      {final List<User> users = const [],
      this.message = '',
      required this.error})
      : _users = users;

  final List<User> _users;
  @override
  @JsonKey()
  List<User> get users {
    if (_users is EqualUnmodifiableListView) return _users;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_users);
  }

  @override
  @JsonKey()
  final String message;
  @override
  final String error;

  @override
  String toString() {
    return 'UserState.error(users: $users, message: $message, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserStateError &&
            const DeepCollectionEquality().equals(other._users, _users) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_users), message, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserStateErrorCopyWith<_$UserStateError> get copyWith =>
      __$$UserStateErrorCopyWithImpl<_$UserStateError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<User> users, String message, String error)
        initial,
    required TResult Function(List<User> users, String message, String error)
        loading,
    required TResult Function(List<User> users, String message, String error)
        loaded,
    required TResult Function(List<User> users, String message, String error)
        error,
  }) {
    return error(users, message, this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<User> users, String message, String error)? initial,
    TResult? Function(List<User> users, String message, String error)? loading,
    TResult? Function(List<User> users, String message, String error)? loaded,
    TResult? Function(List<User> users, String message, String error)? error,
  }) {
    return error?.call(users, message, this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<User> users, String message, String error)? initial,
    TResult Function(List<User> users, String message, String error)? loading,
    TResult Function(List<User> users, String message, String error)? loaded,
    TResult Function(List<User> users, String message, String error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(users, message, this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserStateInitial value) initial,
    required TResult Function(UserStateLoading value) loading,
    required TResult Function(UserStateLoaded value) loaded,
    required TResult Function(UserStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserStateInitial value)? initial,
    TResult? Function(UserStateLoading value)? loading,
    TResult? Function(UserStateLoaded value)? loaded,
    TResult? Function(UserStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserStateInitial value)? initial,
    TResult Function(UserStateLoading value)? loading,
    TResult Function(UserStateLoaded value)? loaded,
    TResult Function(UserStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class UserStateError implements UserState {
  const factory UserStateError(
      {final List<User> users,
      final String message,
      required final String error}) = _$UserStateError;

  @override
  List<User> get users;
  @override
  String get message;
  @override
  String get error;
  @override
  @JsonKey(ignore: true)
  _$$UserStateErrorCopyWith<_$UserStateError> get copyWith =>
      throw _privateConstructorUsedError;
}
