import 'package:injectable/injectable.dart';

import 'package:category_data/data/models/category/category.dart';
import 'package:category_data/data/services/category_service/category_service.dart';

List<Category> categories = [
  const Category(id: 1, name: 'Категория_1'),
  const Category(id: 2, name: 'Категория_2'),
  const Category(id: 3, name: 'Категория_3'),
];

@Environment("dev")
@LazySingleton(as: CategoryService)
class CategoryServiceMock implements CategoryService {
  @override
  Future<void> init() async {}

  @override
  Future<List<Category>> getAll() async {
    Future.delayed(const Duration(milliseconds: 100));
    return categories;
  }

  @override
  Future<Category?> getById(int id) async {
    await Future.delayed(const Duration(milliseconds: 100));
    return categories.singleWhere((element) => element.id == id);
  }

  @override
  Future<void> add(Category category) async {
    await Future.delayed(const Duration(milliseconds: 100));

    if (!checkUniqueness(category)) {
      throw Exception('Категория "${category.name}" уже существует');
    }

    categories.add(category.copyWith(id: getMaxId() + 1));
  }

  @override
  Future<void> update(Category category) async {
    await Future.delayed(const Duration(milliseconds: 100));
    final index = categories.indexWhere((element) => element.id == category.id);

    if (!checkUniqueness(category)) {
      throw Exception('Категория "${category.name}" уже существует');
    }

    categories[index] = categories[index].copyWith(
      id: category.id,
      name: category.name,
    );
  }

  @override
  Future<void> delete(int id) async {
    await Future.delayed(const Duration(milliseconds: 100));
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

  bool checkUniqueness(Category category) {
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
