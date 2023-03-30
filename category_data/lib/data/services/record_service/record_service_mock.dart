import 'package:injectable/injectable.dart';

import 'package:category_data/data/models/record/record.dart';
import 'package:category_data/data/services/record_service/record_service.dart';

List<Record> categories = [
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
    return categories;
  }

  @override
  Future<List<Record>> getByCategoryId(int categoryId) async {
    await Future.delayed(const Duration(milliseconds: 100));
    return categories
        .where((element) => element.categoryId == categoryId)
        .toList();
  }

  @override
  Future<Record?> getById(int id) async {
    await Future<dynamic>.delayed(const Duration(milliseconds: 100));
    return categories.singleWhere((element) => element.id == id);
  }

  @override
  Future<void> add(Record category) async {
    await Future.delayed(const Duration(milliseconds: 100));

    if (!checkUniqueness(category)) {
      throw Exception('Запись "${category.name}" уже существует');
    }

    categories.add(category.copyWith(id: getMaxId() + 1));
  }

  @override
  Future<void> update(Record category) async {
    final index = categories.indexWhere((element) => element.id == category.id);
    categories[index] = categories[index].copyWith(
      id: category.id,
      name: category.name,
    );
  }

  @override
  Future<void> delete(int id) async {
    final index = categories.indexWhere((element) => element.id == id);
    categories.removeAt(index);
  }

  int getMaxId() {
    if (categories.isNotEmpty) {
      final categoriesList = [...categories];
      categoriesList.sort((a, b) => a.id!.compareTo(b.id!));
      return categoriesList.last.id!;
    } else {
      return 0;
    }
  }

  bool checkUniqueness(Record category) {
    var index = -1;
    if (category.id == null) {
      index = categories.indexWhere((element) => element.name == category.name);
    } else {
      index = categories.indexWhere((element) =>
          element.name == category.name && element.id != category.id);
    }
    return index == -1 ? true : false;
  }
}
