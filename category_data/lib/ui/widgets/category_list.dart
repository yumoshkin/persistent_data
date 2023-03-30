import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:category_data/data/models/category/category.dart';
import 'package:category_data/ui/widgets/category_delete_dialog.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({Key? key, required this.categories}) : super(key: key);
  final List<Category> categories;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (context, index) => const Divider(
        height: 1,
        thickness: 1,
      ),
      itemCount: categories.length,
      itemBuilder: (context, index) => Container(
        padding: const EdgeInsets.symmetric(vertical: 8),
        color: Colors.lightBlue,
        child: Row(
          children: [
            Expanded(
              child: GestureDetector(
                onTap: () {
                  context.go('/record/${categories[index].id}');
                },
                child: Text(
                  categories[index].name,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            PopupMenuButton(
              icon: const Icon(Icons.more_horiz),
              color: Colors.white,
              itemBuilder: (BuildContext context) => [
                PopupMenuItem(
                  onTap: () {
                    context.go('/category_form/${categories[index].id}');
                  },
                  child: const Text('Редактировать'),
                ),
                PopupMenuItem(
                  onTap: () {
                    Future.delayed(
                        const Duration(),
                        () => showDialog(
                              context: context,
                              builder: (context) => CategoryDeleteDialog(
                                  category: categories[index]),
                              barrierDismissible: false,
                            ));
                  },
                  child: const Text('Удалить'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
