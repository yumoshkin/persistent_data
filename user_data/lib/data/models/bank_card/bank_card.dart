import 'package:freezed_annotation/freezed_annotation.dart';

part 'bank_card.freezed.dart';
part 'bank_card.g.dart';

@freezed
class BankCard with _$BankCard {
  const factory BankCard({
    int? userId,
    required String cardNumber,
    required String owner,
    required String validThru,
  }) = _BankCard;

  factory BankCard.fromJson(Map<String, dynamic> json) =>
      _$BankCardFromJson(json);
}
