import 'dart:convert';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';

import 'package:user_data/data/models/bank_card/bank_card.dart';

@LazySingleton()
class BankCardService {
  FlutterSecureStorage? storage;

  Future<void> init() async {
    storage = const FlutterSecureStorage(
      aOptions: AndroidOptions(
        encryptedSharedPreferences: true,
      ),
      iOptions: IOSOptions(
        accessibility: KeychainAccessibility.first_unlock,
      ),
    );

    // load initial data
    List<BankCard> bankCards = await getAll();
    if (bankCards.isEmpty) {
      await write(
        const BankCard(
          userId: 1,
          cardNumber: '1111-2222-3333-4444',
          owner: 'IVAN PETROV',
          validThru: '01/24',
        ),
      );
    }
  }

  Future<List<BankCard>> getAll() async {
    List<BankCard> bankCards = [];

    Map<String, String> allValues = await storage!.readAll();

    allValues.forEach((key, value) {
      if (key.contains('_bank_card_key')) {
        final BankCard bankCard = deserialize(value);
        bankCards.add(bankCard);
      }
    });

    return bankCards;
  }

  Future<void> write(BankCard bankCard) async {
    storage?.write(
        key: '${bankCard.userId}_bank_card_key', value: serialize(bankCard));
  }

  Future<void> delete(int userId) async {
    await storage?.delete(key: '${userId}_bank_card_key');
  }

  Future<void> deleteAll() async {
    await storage?.deleteAll();
  }

  String serialize(BankCard bankCard) => json.encode(bankCard.toJson());

  BankCard deserialize(String json) => BankCard.fromJson(jsonDecode(json));
}
