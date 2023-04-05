// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'image_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ImageState {
  List<Img> get images => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  String get error => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Img> images, String message, String error)
        initial,
    required TResult Function(List<Img> images, String message, String error)
        loading,
    required TResult Function(List<Img> images, String message, String error)
        loaded,
    required TResult Function(List<Img> images, String message, String error)
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Img> images, String message, String error)? initial,
    TResult? Function(List<Img> images, String message, String error)? loading,
    TResult? Function(List<Img> images, String message, String error)? loaded,
    TResult? Function(List<Img> images, String message, String error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Img> images, String message, String error)? initial,
    TResult Function(List<Img> images, String message, String error)? loading,
    TResult Function(List<Img> images, String message, String error)? loaded,
    TResult Function(List<Img> images, String message, String error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ImageStateInitial value) initial,
    required TResult Function(ImageStateLoading value) loading,
    required TResult Function(ImageStateLoaded value) loaded,
    required TResult Function(ImageStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ImageStateInitial value)? initial,
    TResult? Function(ImageStateLoading value)? loading,
    TResult? Function(ImageStateLoaded value)? loaded,
    TResult? Function(ImageStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ImageStateInitial value)? initial,
    TResult Function(ImageStateLoading value)? loading,
    TResult Function(ImageStateLoaded value)? loaded,
    TResult Function(ImageStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ImageStateCopyWith<ImageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageStateCopyWith<$Res> {
  factory $ImageStateCopyWith(
          ImageState value, $Res Function(ImageState) then) =
      _$ImageStateCopyWithImpl<$Res, ImageState>;
  @useResult
  $Res call({List<Img> images, String message, String error});
}

/// @nodoc
class _$ImageStateCopyWithImpl<$Res, $Val extends ImageState>
    implements $ImageStateCopyWith<$Res> {
  _$ImageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? images = null,
    Object? message = null,
    Object? error = null,
  }) {
    return _then(_value.copyWith(
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<Img>,
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
abstract class _$$ImageStateInitialCopyWith<$Res>
    implements $ImageStateCopyWith<$Res> {
  factory _$$ImageStateInitialCopyWith(
          _$ImageStateInitial value, $Res Function(_$ImageStateInitial) then) =
      __$$ImageStateInitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Img> images, String message, String error});
}

/// @nodoc
class __$$ImageStateInitialCopyWithImpl<$Res>
    extends _$ImageStateCopyWithImpl<$Res, _$ImageStateInitial>
    implements _$$ImageStateInitialCopyWith<$Res> {
  __$$ImageStateInitialCopyWithImpl(
      _$ImageStateInitial _value, $Res Function(_$ImageStateInitial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? images = null,
    Object? message = null,
    Object? error = null,
  }) {
    return _then(_$ImageStateInitial(
      images: null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<Img>,
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

class _$ImageStateInitial implements ImageStateInitial {
  const _$ImageStateInitial(
      {final List<Img> images = const [], this.message = '', this.error = ''})
      : _images = images;

  final List<Img> _images;
  @override
  @JsonKey()
  List<Img> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  @JsonKey()
  final String message;
  @override
  @JsonKey()
  final String error;

  @override
  String toString() {
    return 'ImageState.initial(images: $images, message: $message, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImageStateInitial &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_images), message, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ImageStateInitialCopyWith<_$ImageStateInitial> get copyWith =>
      __$$ImageStateInitialCopyWithImpl<_$ImageStateInitial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Img> images, String message, String error)
        initial,
    required TResult Function(List<Img> images, String message, String error)
        loading,
    required TResult Function(List<Img> images, String message, String error)
        loaded,
    required TResult Function(List<Img> images, String message, String error)
        error,
  }) {
    return initial(images, message, this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Img> images, String message, String error)? initial,
    TResult? Function(List<Img> images, String message, String error)? loading,
    TResult? Function(List<Img> images, String message, String error)? loaded,
    TResult? Function(List<Img> images, String message, String error)? error,
  }) {
    return initial?.call(images, message, this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Img> images, String message, String error)? initial,
    TResult Function(List<Img> images, String message, String error)? loading,
    TResult Function(List<Img> images, String message, String error)? loaded,
    TResult Function(List<Img> images, String message, String error)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(images, message, this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ImageStateInitial value) initial,
    required TResult Function(ImageStateLoading value) loading,
    required TResult Function(ImageStateLoaded value) loaded,
    required TResult Function(ImageStateError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ImageStateInitial value)? initial,
    TResult? Function(ImageStateLoading value)? loading,
    TResult? Function(ImageStateLoaded value)? loaded,
    TResult? Function(ImageStateError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ImageStateInitial value)? initial,
    TResult Function(ImageStateLoading value)? loading,
    TResult Function(ImageStateLoaded value)? loaded,
    TResult Function(ImageStateError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class ImageStateInitial implements ImageState {
  const factory ImageStateInitial(
      {final List<Img> images,
      final String message,
      final String error}) = _$ImageStateInitial;

  @override
  List<Img> get images;
  @override
  String get message;
  @override
  String get error;
  @override
  @JsonKey(ignore: true)
  _$$ImageStateInitialCopyWith<_$ImageStateInitial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ImageStateLoadingCopyWith<$Res>
    implements $ImageStateCopyWith<$Res> {
  factory _$$ImageStateLoadingCopyWith(
          _$ImageStateLoading value, $Res Function(_$ImageStateLoading) then) =
      __$$ImageStateLoadingCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Img> images, String message, String error});
}

/// @nodoc
class __$$ImageStateLoadingCopyWithImpl<$Res>
    extends _$ImageStateCopyWithImpl<$Res, _$ImageStateLoading>
    implements _$$ImageStateLoadingCopyWith<$Res> {
  __$$ImageStateLoadingCopyWithImpl(
      _$ImageStateLoading _value, $Res Function(_$ImageStateLoading) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? images = null,
    Object? message = null,
    Object? error = null,
  }) {
    return _then(_$ImageStateLoading(
      images: null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<Img>,
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

class _$ImageStateLoading implements ImageStateLoading {
  const _$ImageStateLoading(
      {final List<Img> images = const [], this.message = '', this.error = ''})
      : _images = images;

  final List<Img> _images;
  @override
  @JsonKey()
  List<Img> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  @JsonKey()
  final String message;
  @override
  @JsonKey()
  final String error;

  @override
  String toString() {
    return 'ImageState.loading(images: $images, message: $message, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImageStateLoading &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_images), message, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ImageStateLoadingCopyWith<_$ImageStateLoading> get copyWith =>
      __$$ImageStateLoadingCopyWithImpl<_$ImageStateLoading>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Img> images, String message, String error)
        initial,
    required TResult Function(List<Img> images, String message, String error)
        loading,
    required TResult Function(List<Img> images, String message, String error)
        loaded,
    required TResult Function(List<Img> images, String message, String error)
        error,
  }) {
    return loading(images, message, this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Img> images, String message, String error)? initial,
    TResult? Function(List<Img> images, String message, String error)? loading,
    TResult? Function(List<Img> images, String message, String error)? loaded,
    TResult? Function(List<Img> images, String message, String error)? error,
  }) {
    return loading?.call(images, message, this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Img> images, String message, String error)? initial,
    TResult Function(List<Img> images, String message, String error)? loading,
    TResult Function(List<Img> images, String message, String error)? loaded,
    TResult Function(List<Img> images, String message, String error)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(images, message, this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ImageStateInitial value) initial,
    required TResult Function(ImageStateLoading value) loading,
    required TResult Function(ImageStateLoaded value) loaded,
    required TResult Function(ImageStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ImageStateInitial value)? initial,
    TResult? Function(ImageStateLoading value)? loading,
    TResult? Function(ImageStateLoaded value)? loaded,
    TResult? Function(ImageStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ImageStateInitial value)? initial,
    TResult Function(ImageStateLoading value)? loading,
    TResult Function(ImageStateLoaded value)? loaded,
    TResult Function(ImageStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ImageStateLoading implements ImageState {
  const factory ImageStateLoading(
      {final List<Img> images,
      final String message,
      final String error}) = _$ImageStateLoading;

  @override
  List<Img> get images;
  @override
  String get message;
  @override
  String get error;
  @override
  @JsonKey(ignore: true)
  _$$ImageStateLoadingCopyWith<_$ImageStateLoading> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ImageStateLoadedCopyWith<$Res>
    implements $ImageStateCopyWith<$Res> {
  factory _$$ImageStateLoadedCopyWith(
          _$ImageStateLoaded value, $Res Function(_$ImageStateLoaded) then) =
      __$$ImageStateLoadedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Img> images, String message, String error});
}

/// @nodoc
class __$$ImageStateLoadedCopyWithImpl<$Res>
    extends _$ImageStateCopyWithImpl<$Res, _$ImageStateLoaded>
    implements _$$ImageStateLoadedCopyWith<$Res> {
  __$$ImageStateLoadedCopyWithImpl(
      _$ImageStateLoaded _value, $Res Function(_$ImageStateLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? images = null,
    Object? message = null,
    Object? error = null,
  }) {
    return _then(_$ImageStateLoaded(
      images: null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<Img>,
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

class _$ImageStateLoaded implements ImageStateLoaded {
  const _$ImageStateLoaded(
      {required final List<Img> images, this.message = '', this.error = ''})
      : _images = images;

  final List<Img> _images;
  @override
  List<Img> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  @JsonKey()
  final String message;
  @override
  @JsonKey()
  final String error;

  @override
  String toString() {
    return 'ImageState.loaded(images: $images, message: $message, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImageStateLoaded &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_images), message, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ImageStateLoadedCopyWith<_$ImageStateLoaded> get copyWith =>
      __$$ImageStateLoadedCopyWithImpl<_$ImageStateLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Img> images, String message, String error)
        initial,
    required TResult Function(List<Img> images, String message, String error)
        loading,
    required TResult Function(List<Img> images, String message, String error)
        loaded,
    required TResult Function(List<Img> images, String message, String error)
        error,
  }) {
    return loaded(images, message, this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Img> images, String message, String error)? initial,
    TResult? Function(List<Img> images, String message, String error)? loading,
    TResult? Function(List<Img> images, String message, String error)? loaded,
    TResult? Function(List<Img> images, String message, String error)? error,
  }) {
    return loaded?.call(images, message, this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Img> images, String message, String error)? initial,
    TResult Function(List<Img> images, String message, String error)? loading,
    TResult Function(List<Img> images, String message, String error)? loaded,
    TResult Function(List<Img> images, String message, String error)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(images, message, this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ImageStateInitial value) initial,
    required TResult Function(ImageStateLoading value) loading,
    required TResult Function(ImageStateLoaded value) loaded,
    required TResult Function(ImageStateError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ImageStateInitial value)? initial,
    TResult? Function(ImageStateLoading value)? loading,
    TResult? Function(ImageStateLoaded value)? loaded,
    TResult? Function(ImageStateError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ImageStateInitial value)? initial,
    TResult Function(ImageStateLoading value)? loading,
    TResult Function(ImageStateLoaded value)? loaded,
    TResult Function(ImageStateError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class ImageStateLoaded implements ImageState {
  const factory ImageStateLoaded(
      {required final List<Img> images,
      final String message,
      final String error}) = _$ImageStateLoaded;

  @override
  List<Img> get images;
  @override
  String get message;
  @override
  String get error;
  @override
  @JsonKey(ignore: true)
  _$$ImageStateLoadedCopyWith<_$ImageStateLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ImageStateErrorCopyWith<$Res>
    implements $ImageStateCopyWith<$Res> {
  factory _$$ImageStateErrorCopyWith(
          _$ImageStateError value, $Res Function(_$ImageStateError) then) =
      __$$ImageStateErrorCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Img> images, String message, String error});
}

/// @nodoc
class __$$ImageStateErrorCopyWithImpl<$Res>
    extends _$ImageStateCopyWithImpl<$Res, _$ImageStateError>
    implements _$$ImageStateErrorCopyWith<$Res> {
  __$$ImageStateErrorCopyWithImpl(
      _$ImageStateError _value, $Res Function(_$ImageStateError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? images = null,
    Object? message = null,
    Object? error = null,
  }) {
    return _then(_$ImageStateError(
      images: null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<Img>,
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

class _$ImageStateError implements ImageStateError {
  const _$ImageStateError(
      {final List<Img> images = const [],
      this.message = '',
      required this.error})
      : _images = images;

  final List<Img> _images;
  @override
  @JsonKey()
  List<Img> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  @JsonKey()
  final String message;
  @override
  final String error;

  @override
  String toString() {
    return 'ImageState.error(images: $images, message: $message, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImageStateError &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_images), message, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ImageStateErrorCopyWith<_$ImageStateError> get copyWith =>
      __$$ImageStateErrorCopyWithImpl<_$ImageStateError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Img> images, String message, String error)
        initial,
    required TResult Function(List<Img> images, String message, String error)
        loading,
    required TResult Function(List<Img> images, String message, String error)
        loaded,
    required TResult Function(List<Img> images, String message, String error)
        error,
  }) {
    return error(images, message, this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Img> images, String message, String error)? initial,
    TResult? Function(List<Img> images, String message, String error)? loading,
    TResult? Function(List<Img> images, String message, String error)? loaded,
    TResult? Function(List<Img> images, String message, String error)? error,
  }) {
    return error?.call(images, message, this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Img> images, String message, String error)? initial,
    TResult Function(List<Img> images, String message, String error)? loading,
    TResult Function(List<Img> images, String message, String error)? loaded,
    TResult Function(List<Img> images, String message, String error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(images, message, this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ImageStateInitial value) initial,
    required TResult Function(ImageStateLoading value) loading,
    required TResult Function(ImageStateLoaded value) loaded,
    required TResult Function(ImageStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ImageStateInitial value)? initial,
    TResult? Function(ImageStateLoading value)? loading,
    TResult? Function(ImageStateLoaded value)? loaded,
    TResult? Function(ImageStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ImageStateInitial value)? initial,
    TResult Function(ImageStateLoading value)? loading,
    TResult Function(ImageStateLoaded value)? loaded,
    TResult Function(ImageStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ImageStateError implements ImageState {
  const factory ImageStateError(
      {final List<Img> images,
      final String message,
      required final String error}) = _$ImageStateError;

  @override
  List<Img> get images;
  @override
  String get message;
  @override
  String get error;
  @override
  @JsonKey(ignore: true)
  _$$ImageStateErrorCopyWith<_$ImageStateError> get copyWith =>
      throw _privateConstructorUsedError;
}
