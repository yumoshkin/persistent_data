import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:injectable/injectable.dart';

import 'package:category_data/data/models/record/record.dart';
import 'package:category_data/data/services/record_service/record_service.dart';

@Environment("prod")
@LazySingleton(as: RecordService)
class RecordServiceApi implements RecordService {
  Box<Record>? _recordsBox;

  @override
  Future<List<Record>> getAll() async {
    _recordsBox = await Hive.openBox<Record>('records');
    return _recordsBox!.values.toList();
  }

  @override
  Future<List<Record>> getByCategoryId(int categoryId) async {
    _recordsBox = await Hive.openBox<Record>('records');
    return _recordsBox!.values
        .where((element) => element.categoryId == categoryId)
        .toList();
  }

  @override
  Future<Record?> getById(int id) async {
    _recordsBox = await Hive.openBox<Record>('records');
    final record =
        _recordsBox!.values.firstWhere((element) => element.id == id);
    return record;
  }

  @override
  Future<void> add(Record record) async {
    if (!checkUniqueness(record)) {
      throw Exception('Запись "${record.name}" уже существует');
    }

    await _recordsBox!.add(record.copyWith(id: getMaxId() + 1));
  }

  @override
  Future<void> update(Record record) async {
    if (!checkUniqueness(record)) {
      throw Exception('Запись "${record.name}" уже существует');
    }

    final index = _recordsBox!.values
        .toList()
        .indexWhere((element) => element.id == record.id);
    await _recordsBox!.putAt(index, record);
  }

  @override
  Future<void> delete(int id) async {
    final index =
        _recordsBox!.values.toList().indexWhere((element) => element.id == id);
    await _recordsBox!.deleteAt(index);
  }

  int getMaxId() {
    if (_recordsBox!.values.isNotEmpty) {
      final recordsList = [..._recordsBox!.values];
      recordsList.sort((a, b) => a.id!.compareTo(b.id!));
      return recordsList.last.id!;
    } else {
      return 0;
    }
  }

  bool checkUniqueness(Record record) {
    var index = -1;
    if (record.id == null) {
      index = _recordsBox!.values
          .toList()
          .indexWhere((element) => element.name == record.name);
    } else {
      index = _recordsBox!.values.toList().indexWhere(
          (element) => element.name == record.name && element.id != record.id);
    }
    return index == -1 ? true : false;
  }
}
