import 'package:injectable/injectable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:category_data/data/models/category/category.dart';
import 'package:category_data/data/services/category_service/category_service.dart';

part 'category_state.dart';
part 'category_cubit.freezed.dart';

@injectable
class CategoryCubit extends Cubit<CategoryState> {
  CategoryCubit({required this.categoryService})
      : super(const CategoryState.initial());
  final CategoryService categoryService;

  void initService() async {
    await categoryService.init();
  }

  Future<void> loadCategories() async {
    try {
      emit(const CategoryState.loading());
      final List<Category> categories = await categoryService.getAll();
      if (categories.isNotEmpty) {
        emit(CategoryState.loaded(categories: categories));
      } else {
        emit(const CategoryState.initial());
      }
    } catch (e) {
      emit(CategoryState.error(error: e.toString()));
    }
  }

  Future<void> addCategory(Category category) async {
    try {
      await categoryService.add(category);
      emit(const CategoryState.loading());
      final List<Category> categories = await categoryService.getAll();
      emit(CategoryState.loaded(
          categories: categories, message: 'Данные сохранены'));
    } catch (e) {
      emit(CategoryState.error(
          categories: state.categories,
          error: e.toString().replaceFirst('Exception: ', '')));
    }
  }

  Future<void> updateCategory(Category category) async {
    try {
      await categoryService.update(category);
      emit(const CategoryState.loading());
      final List<Category> categories = await categoryService.getAll();
      emit(CategoryState.loaded(
          categories: categories, message: 'Данные сохранены'));
    } catch (e) {
      emit(CategoryState.error(error: e.toString()));
    }
  }

  Future<void> deleteCategory(int id) async {
    try {
      await categoryService.delete(id);
      emit(const CategoryState.loading());
      final List<Category> categories = await categoryService.getAll();
      emit(CategoryState.loaded(
          categories: categories, message: 'Данные удалены'));
    } catch (e) {
      emit(CategoryState.error(error: e.toString()));
    }
  }

  String getCategoryName(int id) {
    return state.categories.singleWhere((element) => element.id == id).name;
  }
}
