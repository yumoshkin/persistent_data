// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bank_card.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BankCard _$BankCardFromJson(Map<String, dynamic> json) {
  return _BankCard.fromJson(json);
}

/// @nodoc
mixin _$BankCard {
  int? get userId => throw _privateConstructorUsedError;
  String get cardNumber => throw _privateConstructorUsedError;
  String get owner => throw _privateConstructorUsedError;
  String get validThru => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BankCardCopyWith<BankCard> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BankCardCopyWith<$Res> {
  factory $BankCardCopyWith(BankCard value, $Res Function(BankCard) then) =
      _$BankCardCopyWithImpl<$Res, BankCard>;
  @useResult
  $Res call({int? userId, String cardNumber, String owner, String validThru});
}

/// @nodoc
class _$BankCardCopyWithImpl<$Res, $Val extends BankCard>
    implements $BankCardCopyWith<$Res> {
  _$BankCardCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? cardNumber = null,
    Object? owner = null,
    Object? validThru = null,
  }) {
    return _then(_value.copyWith(
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      cardNumber: null == cardNumber
          ? _value.cardNumber
          : cardNumber // ignore: cast_nullable_to_non_nullable
              as String,
      owner: null == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as String,
      validThru: null == validThru
          ? _value.validThru
          : validThru // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BankCardCopyWith<$Res> implements $BankCardCopyWith<$Res> {
  factory _$$_BankCardCopyWith(
          _$_BankCard value, $Res Function(_$_BankCard) then) =
      __$$_BankCardCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? userId, String cardNumber, String owner, String validThru});
}

/// @nodoc
class __$$_BankCardCopyWithImpl<$Res>
    extends _$BankCardCopyWithImpl<$Res, _$_BankCard>
    implements _$$_BankCardCopyWith<$Res> {
  __$$_BankCardCopyWithImpl(
      _$_BankCard _value, $Res Function(_$_BankCard) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? cardNumber = null,
    Object? owner = null,
    Object? validThru = null,
  }) {
    return _then(_$_BankCard(
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      cardNumber: null == cardNumber
          ? _value.cardNumber
          : cardNumber // ignore: cast_nullable_to_non_nullable
              as String,
      owner: null == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as String,
      validThru: null == validThru
          ? _value.validThru
          : validThru // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BankCard implements _BankCard {
  const _$_BankCard(
      {this.userId,
      required this.cardNumber,
      required this.owner,
      required this.validThru});

  factory _$_BankCard.fromJson(Map<String, dynamic> json) =>
      _$$_BankCardFromJson(json);

  @override
  final int? userId;
  @override
  final String cardNumber;
  @override
  final String owner;
  @override
  final String validThru;

  @override
  String toString() {
    return 'BankCard(userId: $userId, cardNumber: $cardNumber, owner: $owner, validThru: $validThru)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BankCard &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.cardNumber, cardNumber) ||
                other.cardNumber == cardNumber) &&
            (identical(other.owner, owner) || other.owner == owner) &&
            (identical(other.validThru, validThru) ||
                other.validThru == validThru));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, userId, cardNumber, owner, validThru);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BankCardCopyWith<_$_BankCard> get copyWith =>
      __$$_BankCardCopyWithImpl<_$_BankCard>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BankCardToJson(
      this,
    );
  }
}

abstract class _BankCard implements BankCard {
  const factory _BankCard(
      {final int? userId,
      required final String cardNumber,
      required final String owner,
      required final String validThru}) = _$_BankCard;

  factory _BankCard.fromJson(Map<String, dynamic> json) = _$_BankCard.fromJson;

  @override
  int? get userId;
  @override
  String get cardNumber;
  @override
  String get owner;
  @override
  String get validThru;
  @override
  @JsonKey(ignore: true)
  _$$_BankCardCopyWith<_$_BankCard> get copyWith =>
      throw _privateConstructorUsedError;
}
