import 'package:category_data/data/models/category/category.dart';

abstract class CategoryService {
  Future<void> init();
  Future<List<Category>> getAll();
  Future<Category?> getById(int id);
  Future<void> add(Category category);
  Future<void> update(Category category);
  Future<void> delete(int id);
}
