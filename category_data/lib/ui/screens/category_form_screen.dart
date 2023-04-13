import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import 'package:category_data/business/cubits/category_cubit/category_cubit.dart';
import 'package:category_data/data/models/category/category.dart';
import 'package:category_data/ui/utils/functions.dart';
import 'package:category_data/ui/widgets/form_field_text.dart';

class CategoryFormScreen extends StatefulWidget {
  const CategoryFormScreen({Key? key, required this.id}) : super(key: key);
  final String id;

  @override
  State<CategoryFormScreen> createState() => _CategoryFormScreenState();
}

class _CategoryFormScreenState extends State<CategoryFormScreen> {
  final GlobalKey<FormState> _categoryFormKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  Category? _category;

  @override
  void initState() {
    super.initState();
    setFields(int.parse(widget.id));
  }

  @override
  void dispose() {
    _nameController.dispose();
    super.dispose();
  }

  void setFields(int id) {
    if (widget.id != '0') {
      final categories = context.read<CategoryCubit>().state.categories;
      _category = categories.singleWhere((element) => element.id == id);
      _nameController.text = _category!.name;
    }
  }

  void submit(BuildContext context) async {
    if (!(_categoryFormKey.currentState?.validate() ?? false)) {
      return;
    }

    if (widget.id == '0') {
      final category = Category(
        name: _nameController.text,
      );
      await context.read<CategoryCubit>().addCategory(category);
    } else {
      await context.read<CategoryCubit>().updateCategory(
            _category!.copyWith(
              name: _nameController.text,
            ),
          );
    }

    popIfSuccess();
  }

  void popIfSuccess() {
    if (context.read<CategoryCubit>().state.error.isEmpty) {
      context.pop();
    } else {
      context.read<CategoryCubit>().loadCategories();
    }
  }

  void cancel() async {
    context.pop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.id == '0' ? 'Новая категория' : 'Редактирование категории',
        ),
      ),
      body: Form(
        key: _categoryFormKey,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                FormFieldText(
                  controller: _nameController,
                  labelText: 'Наименование',
                  autofocus: _category?.id == null,
                  isAutovalidate: true,
                  validator: (value) => validateRequiredField(
                      value, 'Наименование не должно быть пустым'),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 8),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          minimumSize: const Size(140, 36),
                          textStyle: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        onPressed: () => submit(context),
                        child: const Text('Сохранить'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          minimumSize: const Size(140, 36),
                          textStyle: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        onPressed: cancel,
                        child: const Text('Отменить'),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
