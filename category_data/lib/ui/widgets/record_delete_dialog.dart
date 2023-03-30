import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:category_data/business/cubits/record_cubit/record_cubit.dart';
import 'package:category_data/data/models/record/record.dart';

class RecordDeleteDialog extends StatelessWidget {
  final Record record;
  const RecordDeleteDialog({Key? key, required this.record}) : super(key: key);

  void delete(BuildContext context, [bool mounted = true]) async {
    await context.read<RecordCubit>().deleteRecord(record);
    if (mounted) {
      Navigator.pop(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Подтверждение'),
      content: Text(
        'Удалить категорию "${record.name}"?',
        style: const TextStyle(fontSize: 18),
      ),
      actionsPadding: const EdgeInsets.only(bottom: 16, right: 16),
      actions: [
        TextButton(
          child: const Text(
            'Удалить',
            style: TextStyle(fontSize: 18),
          ),
          onPressed: () => delete(context),
        ),
        TextButton(
          child: const Text(
            'Отменить',
            style: TextStyle(fontSize: 18),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ],
    );
  }
}
