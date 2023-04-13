// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bank_card_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BankCardState {
  List<BankCard> get bankCards => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  String get error => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<BankCard> bankCards, String message, String error)
        initial,
    required TResult Function(
            List<BankCard> bankCards, String message, String error)
        loading,
    required TResult Function(
            List<BankCard> bankCards, String message, String error)
        loaded,
    required TResult Function(
            List<BankCard> bankCards, String message, String error)
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<BankCard> bankCards, String message, String error)?
        initial,
    TResult? Function(List<BankCard> bankCards, String message, String error)?
        loading,
    TResult? Function(List<BankCard> bankCards, String message, String error)?
        loaded,
    TResult? Function(List<BankCard> bankCards, String message, String error)?
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<BankCard> bankCards, String message, String error)?
        initial,
    TResult Function(List<BankCard> bankCards, String message, String error)?
        loading,
    TResult Function(List<BankCard> bankCards, String message, String error)?
        loaded,
    TResult Function(List<BankCard> bankCards, String message, String error)?
        error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BankCardStateInitial value) initial,
    required TResult Function(BankCardStateLoading value) loading,
    required TResult Function(BankCardStateLoaded value) loaded,
    required TResult Function(BankCardStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BankCardStateInitial value)? initial,
    TResult? Function(BankCardStateLoading value)? loading,
    TResult? Function(BankCardStateLoaded value)? loaded,
    TResult? Function(BankCardStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BankCardStateInitial value)? initial,
    TResult Function(BankCardStateLoading value)? loading,
    TResult Function(BankCardStateLoaded value)? loaded,
    TResult Function(BankCardStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BankCardStateCopyWith<BankCardState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BankCardStateCopyWith<$Res> {
  factory $BankCardStateCopyWith(
          BankCardState value, $Res Function(BankCardState) then) =
      _$BankCardStateCopyWithImpl<$Res, BankCardState>;
  @useResult
  $Res call({List<BankCard> bankCards, String message, String error});
}

/// @nodoc
class _$BankCardStateCopyWithImpl<$Res, $Val extends BankCardState>
    implements $BankCardStateCopyWith<$Res> {
  _$BankCardStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bankCards = null,
    Object? message = null,
    Object? error = null,
  }) {
    return _then(_value.copyWith(
      bankCards: null == bankCards
          ? _value.bankCards
          : bankCards // ignore: cast_nullable_to_non_nullable
              as List<BankCard>,
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
abstract class _$$BankCardStateInitialCopyWith<$Res>
    implements $BankCardStateCopyWith<$Res> {
  factory _$$BankCardStateInitialCopyWith(_$BankCardStateInitial value,
          $Res Function(_$BankCardStateInitial) then) =
      __$$BankCardStateInitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<BankCard> bankCards, String message, String error});
}

/// @nodoc
class __$$BankCardStateInitialCopyWithImpl<$Res>
    extends _$BankCardStateCopyWithImpl<$Res, _$BankCardStateInitial>
    implements _$$BankCardStateInitialCopyWith<$Res> {
  __$$BankCardStateInitialCopyWithImpl(_$BankCardStateInitial _value,
      $Res Function(_$BankCardStateInitial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bankCards = null,
    Object? message = null,
    Object? error = null,
  }) {
    return _then(_$BankCardStateInitial(
      bankCards: null == bankCards
          ? _value._bankCards
          : bankCards // ignore: cast_nullable_to_non_nullable
              as List<BankCard>,
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

class _$BankCardStateInitial implements BankCardStateInitial {
  const _$BankCardStateInitial(
      {final List<BankCard> bankCards = const [],
      this.message = '',
      this.error = ''})
      : _bankCards = bankCards;

  final List<BankCard> _bankCards;
  @override
  @JsonKey()
  List<BankCard> get bankCards {
    if (_bankCards is EqualUnmodifiableListView) return _bankCards;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_bankCards);
  }

  @override
  @JsonKey()
  final String message;
  @override
  @JsonKey()
  final String error;

  @override
  String toString() {
    return 'BankCardState.initial(bankCards: $bankCards, message: $message, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BankCardStateInitial &&
            const DeepCollectionEquality()
                .equals(other._bankCards, _bankCards) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_bankCards), message, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BankCardStateInitialCopyWith<_$BankCardStateInitial> get copyWith =>
      __$$BankCardStateInitialCopyWithImpl<_$BankCardStateInitial>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<BankCard> bankCards, String message, String error)
        initial,
    required TResult Function(
            List<BankCard> bankCards, String message, String error)
        loading,
    required TResult Function(
            List<BankCard> bankCards, String message, String error)
        loaded,
    required TResult Function(
            List<BankCard> bankCards, String message, String error)
        error,
  }) {
    return initial(bankCards, message, this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<BankCard> bankCards, String message, String error)?
        initial,
    TResult? Function(List<BankCard> bankCards, String message, String error)?
        loading,
    TResult? Function(List<BankCard> bankCards, String message, String error)?
        loaded,
    TResult? Function(List<BankCard> bankCards, String message, String error)?
        error,
  }) {
    return initial?.call(bankCards, message, this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<BankCard> bankCards, String message, String error)?
        initial,
    TResult Function(List<BankCard> bankCards, String message, String error)?
        loading,
    TResult Function(List<BankCard> bankCards, String message, String error)?
        loaded,
    TResult Function(List<BankCard> bankCards, String message, String error)?
        error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(bankCards, message, this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BankCardStateInitial value) initial,
    required TResult Function(BankCardStateLoading value) loading,
    required TResult Function(BankCardStateLoaded value) loaded,
    required TResult Function(BankCardStateError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BankCardStateInitial value)? initial,
    TResult? Function(BankCardStateLoading value)? loading,
    TResult? Function(BankCardStateLoaded value)? loaded,
    TResult? Function(BankCardStateError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BankCardStateInitial value)? initial,
    TResult Function(BankCardStateLoading value)? loading,
    TResult Function(BankCardStateLoaded value)? loaded,
    TResult Function(BankCardStateError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class BankCardStateInitial implements BankCardState {
  const factory BankCardStateInitial(
      {final List<BankCard> bankCards,
      final String message,
      final String error}) = _$BankCardStateInitial;

  @override
  List<BankCard> get bankCards;
  @override
  String get message;
  @override
  String get error;
  @override
  @JsonKey(ignore: true)
  _$$BankCardStateInitialCopyWith<_$BankCardStateInitial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BankCardStateLoadingCopyWith<$Res>
    implements $BankCardStateCopyWith<$Res> {
  factory _$$BankCardStateLoadingCopyWith(_$BankCardStateLoading value,
          $Res Function(_$BankCardStateLoading) then) =
      __$$BankCardStateLoadingCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<BankCard> bankCards, String message, String error});
}

/// @nodoc
class __$$BankCardStateLoadingCopyWithImpl<$Res>
    extends _$BankCardStateCopyWithImpl<$Res, _$BankCardStateLoading>
    implements _$$BankCardStateLoadingCopyWith<$Res> {
  __$$BankCardStateLoadingCopyWithImpl(_$BankCardStateLoading _value,
      $Res Function(_$BankCardStateLoading) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bankCards = null,
    Object? message = null,
    Object? error = null,
  }) {
    return _then(_$BankCardStateLoading(
      bankCards: null == bankCards
          ? _value._bankCards
          : bankCards // ignore: cast_nullable_to_non_nullable
              as List<BankCard>,
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

class _$BankCardStateLoading implements BankCardStateLoading {
  const _$BankCardStateLoading(
      {final List<BankCard> bankCards = const [],
      this.message = '',
      this.error = ''})
      : _bankCards = bankCards;

  final List<BankCard> _bankCards;
  @override
  @JsonKey()
  List<BankCard> get bankCards {
    if (_bankCards is EqualUnmodifiableListView) return _bankCards;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_bankCards);
  }

  @override
  @JsonKey()
  final String message;
  @override
  @JsonKey()
  final String error;

  @override
  String toString() {
    return 'BankCardState.loading(bankCards: $bankCards, message: $message, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BankCardStateLoading &&
            const DeepCollectionEquality()
                .equals(other._bankCards, _bankCards) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_bankCards), message, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BankCardStateLoadingCopyWith<_$BankCardStateLoading> get copyWith =>
      __$$BankCardStateLoadingCopyWithImpl<_$BankCardStateLoading>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<BankCard> bankCards, String message, String error)
        initial,
    required TResult Function(
            List<BankCard> bankCards, String message, String error)
        loading,
    required TResult Function(
            List<BankCard> bankCards, String message, String error)
        loaded,
    required TResult Function(
            List<BankCard> bankCards, String message, String error)
        error,
  }) {
    return loading(bankCards, message, this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<BankCard> bankCards, String message, String error)?
        initial,
    TResult? Function(List<BankCard> bankCards, String message, String error)?
        loading,
    TResult? Function(List<BankCard> bankCards, String message, String error)?
        loaded,
    TResult? Function(List<BankCard> bankCards, String message, String error)?
        error,
  }) {
    return loading?.call(bankCards, message, this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<BankCard> bankCards, String message, String error)?
        initial,
    TResult Function(List<BankCard> bankCards, String message, String error)?
        loading,
    TResult Function(List<BankCard> bankCards, String message, String error)?
        loaded,
    TResult Function(List<BankCard> bankCards, String message, String error)?
        error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(bankCards, message, this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BankCardStateInitial value) initial,
    required TResult Function(BankCardStateLoading value) loading,
    required TResult Function(BankCardStateLoaded value) loaded,
    required TResult Function(BankCardStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BankCardStateInitial value)? initial,
    TResult? Function(BankCardStateLoading value)? loading,
    TResult? Function(BankCardStateLoaded value)? loaded,
    TResult? Function(BankCardStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BankCardStateInitial value)? initial,
    TResult Function(BankCardStateLoading value)? loading,
    TResult Function(BankCardStateLoaded value)? loaded,
    TResult Function(BankCardStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class BankCardStateLoading implements BankCardState {
  const factory BankCardStateLoading(
      {final List<BankCard> bankCards,
      final String message,
      final String error}) = _$BankCardStateLoading;

  @override
  List<BankCard> get bankCards;
  @override
  String get message;
  @override
  String get error;
  @override
  @JsonKey(ignore: true)
  _$$BankCardStateLoadingCopyWith<_$BankCardStateLoading> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BankCardStateLoadedCopyWith<$Res>
    implements $BankCardStateCopyWith<$Res> {
  factory _$$BankCardStateLoadedCopyWith(_$BankCardStateLoaded value,
          $Res Function(_$BankCardStateLoaded) then) =
      __$$BankCardStateLoadedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<BankCard> bankCards, String message, String error});
}

/// @nodoc
class __$$BankCardStateLoadedCopyWithImpl<$Res>
    extends _$BankCardStateCopyWithImpl<$Res, _$BankCardStateLoaded>
    implements _$$BankCardStateLoadedCopyWith<$Res> {
  __$$BankCardStateLoadedCopyWithImpl(
      _$BankCardStateLoaded _value, $Res Function(_$BankCardStateLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bankCards = null,
    Object? message = null,
    Object? error = null,
  }) {
    return _then(_$BankCardStateLoaded(
      bankCards: null == bankCards
          ? _value._bankCards
          : bankCards // ignore: cast_nullable_to_non_nullable
              as List<BankCard>,
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

class _$BankCardStateLoaded implements BankCardStateLoaded {
  const _$BankCardStateLoaded(
      {required final List<BankCard> bankCards,
      this.message = '',
      this.error = ''})
      : _bankCards = bankCards;

  final List<BankCard> _bankCards;
  @override
  List<BankCard> get bankCards {
    if (_bankCards is EqualUnmodifiableListView) return _bankCards;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_bankCards);
  }

  @override
  @JsonKey()
  final String message;
  @override
  @JsonKey()
  final String error;

  @override
  String toString() {
    return 'BankCardState.loaded(bankCards: $bankCards, message: $message, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BankCardStateLoaded &&
            const DeepCollectionEquality()
                .equals(other._bankCards, _bankCards) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_bankCards), message, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BankCardStateLoadedCopyWith<_$BankCardStateLoaded> get copyWith =>
      __$$BankCardStateLoadedCopyWithImpl<_$BankCardStateLoaded>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<BankCard> bankCards, String message, String error)
        initial,
    required TResult Function(
            List<BankCard> bankCards, String message, String error)
        loading,
    required TResult Function(
            List<BankCard> bankCards, String message, String error)
        loaded,
    required TResult Function(
            List<BankCard> bankCards, String message, String error)
        error,
  }) {
    return loaded(bankCards, message, this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<BankCard> bankCards, String message, String error)?
        initial,
    TResult? Function(List<BankCard> bankCards, String message, String error)?
        loading,
    TResult? Function(List<BankCard> bankCards, String message, String error)?
        loaded,
    TResult? Function(List<BankCard> bankCards, String message, String error)?
        error,
  }) {
    return loaded?.call(bankCards, message, this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<BankCard> bankCards, String message, String error)?
        initial,
    TResult Function(List<BankCard> bankCards, String message, String error)?
        loading,
    TResult Function(List<BankCard> bankCards, String message, String error)?
        loaded,
    TResult Function(List<BankCard> bankCards, String message, String error)?
        error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(bankCards, message, this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BankCardStateInitial value) initial,
    required TResult Function(BankCardStateLoading value) loading,
    required TResult Function(BankCardStateLoaded value) loaded,
    required TResult Function(BankCardStateError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BankCardStateInitial value)? initial,
    TResult? Function(BankCardStateLoading value)? loading,
    TResult? Function(BankCardStateLoaded value)? loaded,
    TResult? Function(BankCardStateError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BankCardStateInitial value)? initial,
    TResult Function(BankCardStateLoading value)? loading,
    TResult Function(BankCardStateLoaded value)? loaded,
    TResult Function(BankCardStateError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class BankCardStateLoaded implements BankCardState {
  const factory BankCardStateLoaded(
      {required final List<BankCard> bankCards,
      final String message,
      final String error}) = _$BankCardStateLoaded;

  @override
  List<BankCard> get bankCards;
  @override
  String get message;
  @override
  String get error;
  @override
  @JsonKey(ignore: true)
  _$$BankCardStateLoadedCopyWith<_$BankCardStateLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BankCardStateErrorCopyWith<$Res>
    implements $BankCardStateCopyWith<$Res> {
  factory _$$BankCardStateErrorCopyWith(_$BankCardStateError value,
          $Res Function(_$BankCardStateError) then) =
      __$$BankCardStateErrorCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<BankCard> bankCards, String message, String error});
}

/// @nodoc
class __$$BankCardStateErrorCopyWithImpl<$Res>
    extends _$BankCardStateCopyWithImpl<$Res, _$BankCardStateError>
    implements _$$BankCardStateErrorCopyWith<$Res> {
  __$$BankCardStateErrorCopyWithImpl(
      _$BankCardStateError _value, $Res Function(_$BankCardStateError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bankCards = null,
    Object? message = null,
    Object? error = null,
  }) {
    return _then(_$BankCardStateError(
      bankCards: null == bankCards
          ? _value._bankCards
          : bankCards // ignore: cast_nullable_to_non_nullable
              as List<BankCard>,
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

class _$BankCardStateError implements BankCardStateError {
  const _$BankCardStateError(
      {final List<BankCard> bankCards = const [],
      this.message = '',
      required this.error})
      : _bankCards = bankCards;

  final List<BankCard> _bankCards;
  @override
  @JsonKey()
  List<BankCard> get bankCards {
    if (_bankCards is EqualUnmodifiableListView) return _bankCards;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_bankCards);
  }

  @override
  @JsonKey()
  final String message;
  @override
  final String error;

  @override
  String toString() {
    return 'BankCardState.error(bankCards: $bankCards, message: $message, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BankCardStateError &&
            const DeepCollectionEquality()
                .equals(other._bankCards, _bankCards) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_bankCards), message, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BankCardStateErrorCopyWith<_$BankCardStateError> get copyWith =>
      __$$BankCardStateErrorCopyWithImpl<_$BankCardStateError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<BankCard> bankCards, String message, String error)
        initial,
    required TResult Function(
            List<BankCard> bankCards, String message, String error)
        loading,
    required TResult Function(
            List<BankCard> bankCards, String message, String error)
        loaded,
    required TResult Function(
            List<BankCard> bankCards, String message, String error)
        error,
  }) {
    return error(bankCards, message, this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<BankCard> bankCards, String message, String error)?
        initial,
    TResult? Function(List<BankCard> bankCards, String message, String error)?
        loading,
    TResult? Function(List<BankCard> bankCards, String message, String error)?
        loaded,
    TResult? Function(List<BankCard> bankCards, String message, String error)?
        error,
  }) {
    return error?.call(bankCards, message, this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<BankCard> bankCards, String message, String error)?
        initial,
    TResult Function(List<BankCard> bankCards, String message, String error)?
        loading,
    TResult Function(List<BankCard> bankCards, String message, String error)?
        loaded,
    TResult Function(List<BankCard> bankCards, String message, String error)?
        error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(bankCards, message, this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BankCardStateInitial value) initial,
    required TResult Function(BankCardStateLoading value) loading,
    required TResult Function(BankCardStateLoaded value) loaded,
    required TResult Function(BankCardStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BankCardStateInitial value)? initial,
    TResult? Function(BankCardStateLoading value)? loading,
    TResult? Function(BankCardStateLoaded value)? loaded,
    TResult? Function(BankCardStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BankCardStateInitial value)? initial,
    TResult Function(BankCardStateLoading value)? loading,
    TResult Function(BankCardStateLoaded value)? loaded,
    TResult Function(BankCardStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class BankCardStateError implements BankCardState {
  const factory BankCardStateError(
      {final List<BankCard> bankCards,
      final String message,
      required final String error}) = _$BankCardStateError;

  @override
  List<BankCard> get bankCards;
  @override
  String get message;
  @override
  String get error;
  @override
  @JsonKey(ignore: true)
  _$$BankCardStateErrorCopyWith<_$BankCardStateError> get copyWith =>
      throw _privateConstructorUsedError;
}
