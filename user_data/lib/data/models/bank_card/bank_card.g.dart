// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bank_card.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BankCard _$$_BankCardFromJson(Map<String, dynamic> json) => _$_BankCard(
      userId: json['userId'] as int?,
      cardNumber: json['cardNumber'] as String,
      owner: json['owner'] as String,
      validThru: json['validThru'] as String,
    );

Map<String, dynamic> _$$_BankCardToJson(_$_BankCard instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'cardNumber': instance.cardNumber,
      'owner': instance.owner,
      'validThru': instance.validThru,
    };
