import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import 'package:category_data/business/cubits/category_cubit/category_cubit.dart';
import 'package:category_data/ui/utils/functions.dart';
import 'package:category_data/ui/widgets/category_list.dart';

class CategoryListScreen extends StatelessWidget {
  const CategoryListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.bold,
      color: Colors.black54,
    );

    return BlocListener<CategoryCubit, CategoryState>(
      listener: (context, state) {
        if (state.message.isNotEmpty) {
          showSnackBarSuccess(context, state.message);
        } else if (state.error.isNotEmpty) {
          showSnackBarError(context, state.error);
        }
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Категории'),
        ),
        body: BlocBuilder<CategoryCubit, CategoryState>(
          builder: (context, state) {
            if (state is CategoryStateLoading) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }

            if (state is CategoryStateLoaded) {
              return CategoryList(categories: state.categories);
            }

            if (state is CategoryStateInitial) {
              return const Center(
                child: Text(
                  'Нет данных',
                  style: textStyle,
                ),
              );
            }

            if (state is CategoryStateError) {
              return Center(
                child: Text(
                  'Ошибка при получении данных: ${state.error}',
                  style: textStyle,
                ),
              );
            }

            return const SizedBox.shrink();
          },
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            context.go('/category_form/0');
          },
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
