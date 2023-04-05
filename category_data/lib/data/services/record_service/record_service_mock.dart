import 'package:injectable/injectable.dart';

import 'package:category_data/data/models/record/record.dart';
import 'package:category_data/data/services/record_service/record_service.dart';

List<Record> records = [
  const Record(
      id: 1, categoryId: 1, name: 'Запись_1', description: 'Описание_1'),
  const Record(
      id: 2, categoryId: 1, name: 'Запись_2', description: 'Описание_2'),
  const Record(
      id: 3, categoryId: 2, name: 'Запись_3', description: 'Описание_3'),
];

@Environment("dev")
@LazySingleton(as: RecordService)
class RecordServiceMock implements RecordService {
  @override
  Future<List<Record>> getAll() async {
    await Future.delayed(const Duration(milliseconds: 100));
    return records;
  }

  @override
  Future<List<Record>> getByCategoryId(int categoryId) async {
    await Future.delayed(const Duration(milliseconds: 100));
    return records
        .where((element) => element.categoryId == categoryId)
        .toList();
  }

  @override
  Future<Record?> getById(int id) async {
    await Future<dynamic>.delayed(const Duration(milliseconds: 100));
    return records.singleWhere((element) => element.id == id);
  }

  @override
  Future<void> add(Record record) async {
    await Future.delayed(const Duration(milliseconds: 100));

    if (!checkUniqueness(record)) {
      throw Exception('Запись "${record.name}" уже существует');
    }

    records.add(record.copyWith(id: getMaxId() + 1));
  }

  @override
  Future<void> update(Record record) async {
    await Future.delayed(const Duration(milliseconds: 100));

    if (!checkUniqueness(record)) {
      throw Exception('Запись "${record.name}" уже существует');
    }

    final index = records.indexWhere((element) => element.id == record.id);
    records[index] = records[index].copyWith(
      id: record.id,
      name: record.name,
    );
  }

  @override
  Future<void> delete(int id) async {
    final index = records.indexWhere((element) => element.id == id);
    records.removeAt(index);
  }

  int getMaxId() {
    if (records.isNotEmpty) {
      final recordsList = [...records];
      recordsList.sort((a, b) => a.id!.compareTo(b.id!));
      return recordsList.last.id!;
    } else {
      return 0;
    }
  }

  bool checkUniqueness(Record record) {
    var index = -1;
    if (record.id == null) {
      index = records.indexWhere((element) => element.name == record.name);
    } else {
      index = records.indexWhere(
          (element) => element.name == record.name && element.id != record.id);
    }
    return index == -1 ? true : false;
  }
}
