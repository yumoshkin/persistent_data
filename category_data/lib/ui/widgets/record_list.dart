import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:category_data/data/models/record/record.dart';
import 'package:category_data/ui/widgets/record_delete_dialog.dart';

class RecordList extends StatelessWidget {
  const RecordList({
    Key? key,
    required this.records,
    required this.categoryName,
  }) : super(key: key);
  final List<Record> records;
  final String categoryName;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (context, index) => const Divider(
        height: 1,
        thickness: 1,
      ),
      itemCount: records.length,
      itemBuilder: (context, index) => Container(
        padding: const EdgeInsets.symmetric(vertical: 8),
        color: Colors.blueGrey,
        child: Row(
          children: [
            Expanded(
              child: GestureDetector(
                onTap: () {
                  context.go(
                      '/record/${records[index].categoryId}/record_view/${records[index].id}');
                },
                child: Text(
                  records[index].name,
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
                    context.go(
                        '/record/${records[index].categoryId}/record_form/${records[index].id}/${records[index].categoryId}');
                  },
                  child: const Text('Редактировать'),
                ),
                PopupMenuItem(
                  onTap: () {
                    Future.delayed(
                        const Duration(),
                        () => showDialog(
                              context: context,
                              builder: (context) =>
                                  RecordDeleteDialog(record: records[index]),
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
