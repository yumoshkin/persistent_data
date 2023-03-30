import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:injectable/injectable.dart';

import 'package:category_data/data/models/category/category.dart';
import 'package:category_data/data/models/record/record.dart';
import 'package:category_data/data/services/category_service/category_service.dart';

@Environment("prod")
@LazySingleton(as: CategoryService)
class CategoryServiceApi implements CategoryService {
  Box<Category>? _categoriesBox;

  @override
  Future<void> init() async {
    Hive.registerAdapter(CategoryAdapter());
    Hive.registerAdapter(RecordAdapter());

    // load init data
    _categoriesBox = await Hive.openBox<Category>('categories');
    if (_categoriesBox!.values.isEmpty) {
      _categoriesBox!.add(const Category(id: 1, name: 'Категория 1'));
      _categoriesBox!.add(const Category(id: 2, name: 'Категория 2'));
      _categoriesBox!.add(const Category(id: 3, name: 'Категория 3'));

      Box<Record>? recordsBox = await Hive.openBox<Record>('records');
      if (recordsBox.values.isEmpty) {
        recordsBox.add(const Record(
            id: 1, categoryId: 1, name: 'Запись 1', description: 'Описание 1'));
        recordsBox.add(const Record(
            id: 2, categoryId: 1, name: 'Запись 2', description: 'Описание 2'));
        recordsBox.add(const Record(
            id: 3, categoryId: 2, name: 'Запись 3', description: 'Описание 3'));
      }
    }
  }

  @override
  Future<List<Category>> getAll() async {
    _categoriesBox = await Hive.openBox<Category>('categories');
    return _categoriesBox!.values.toList();
  }

  @override
  Future<Category?> getById(int id) async {
    _categoriesBox = await Hive.openBox<Category>('categories');
    final category =
        _categoriesBox!.values.firstWhere((element) => element.id == id);
    return category;
  }

  @override
  Future<void> add(Category category) async {
    if (!checkUniqueness(category)) {
      throw Exception('Категория "${category.name}" уже существует');
    }

    await _categoriesBox!.add(category.copyWith(id: getMaxId() + 1));
  }

  @override
  Future<void> update(Category category) async {
    final index = _categoriesBox!.values
        .toList()
        .indexWhere((element) => element.id == category.id);
    await _categoriesBox!.putAt(index, category);
  }

  @override
  Future<void> delete(int id) async {
    final index = _categoriesBox!.values
        .toList()
        .indexWhere((element) => element.id == id);
    await _categoriesBox!.deleteAt(index);
  }

  int getMaxId() {
    if (_categoriesBox!.values.isNotEmpty) {
      final categoriesList = [..._categoriesBox!.values];
      categoriesList.sort((a, b) => a.id!.compareTo(b.id!));
      return categoriesList.last.id!;
    } else {
      return 0;
    }
  }

  bool checkUniqueness(Category category) {
    var index = -1;
    if (category.id == null) {
      index = _categoriesBox!.values
          .toList()
          .indexWhere((element) => element.name == category.name);
    } else {
      index = _categoriesBox!.values.toList().indexWhere((element) =>
          element.name == category.name && element.id != category.id);
    }
    return index == -1 ? true : false;
  }
}
