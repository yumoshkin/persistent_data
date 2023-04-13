import 'package:injectable/injectable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:user_data/data/models/bank_card/bank_card.dart';
import 'package:user_data/data/services/bank_card_service.dart';

part 'bank_card_state.dart';
part 'bank_card_cubit.freezed.dart';

@injectable
class BankCardCubit extends Cubit<BankCardState> {
  BankCardCubit({required this.bankCardService})
      : super(const BankCardState.initial());
  final BankCardService bankCardService;

  Future<void> init() async {
    emit(const BankCardState.loading());
    await bankCardService.init();
    await loadBankCards();
  }

  Future<void> loadBankCards() async {
    try {
      emit(const BankCardState.loading());
      final List<BankCard> bankCards = await bankCardService.getAll();

      if (bankCards.isNotEmpty) {
        emit(BankCardState.loaded(bankCards: bankCards));
      } else {
        emit(const BankCardState.initial());
      }
    } catch (e) {
      emit(BankCardState.error(error: e.toString()));
    }
  }

  BankCard? getByUserId(int userId) {
    BankCard? bankCard;

    if (state.bankCards.isNotEmpty) {
      int index =
          state.bankCards.indexWhere((element) => element.userId == userId);

      if (index != -1) {
        bankCard = state.bankCards[index];
      }
    }

    return bankCard;
  }

  Future<void> writeBankCard(BankCard bankCard) async {
    try {
      emit(const BankCardState.loading());
      await bankCardService.write(bankCard);
      final List<BankCard> bankCards = await bankCardService.getAll();
      emit(BankCardState.loaded(
          bankCards: bankCards, message: 'Данные сохранены'));
    } catch (e) {
      emit(BankCardState.error(
          error: e.toString().replaceFirst('Exception: ', '')));
    }
  }

  Future<void> deleteBankCard(int userId) async {
    try {
      await bankCardService.delete(userId);
      emit(const BankCardState.loading());
      final List<BankCard> bankCards = await bankCardService.getAll();

      if (bankCards.isNotEmpty) {
        emit(BankCardState.loaded(
            bankCards: bankCards, message: 'Данные удалены'));
      } else {
        emit(const BankCardState.initial(message: 'Данные удалены'));
      }
    } catch (e) {
      emit(BankCardState.error(error: e.toString()));
    }
  }
}
