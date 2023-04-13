part of 'bank_card_cubit.dart';

@freezed
class BankCardState with _$BankCardState {
  const factory BankCardState.initial({
    @Default([]) List<BankCard> bankCards,
    @Default('') String message,
    @Default('') String error,
  }) = BankCardStateInitial;
  const factory BankCardState.loading({
    @Default([]) List<BankCard> bankCards,
    @Default('') String message,
    @Default('') String error,
  }) = BankCardStateLoading;
  const factory BankCardState.loaded({
    required List<BankCard> bankCards,
    @Default('') String message,
    @Default('') String error,
  }) = BankCardStateLoaded;
  const factory BankCardState.error({
    @Default([]) List<BankCard> bankCards,
    @Default('') String message,
    required String error,
  }) = BankCardStateError;
}
