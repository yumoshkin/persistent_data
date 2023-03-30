import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:category_data/business/cubits/category_cubit/category_cubit.dart';
import 'package:category_data/business/cubits/record_cubit/record_cubit.dart';
import 'package:category_data/data/models/record/record.dart';

class RecordViewScreen extends StatelessWidget {
  const RecordViewScreen({Key? key, required this.id}) : super(key: key);
  final String id;

  @override
  Widget build(BuildContext context) {
    Record record = context
        .read<RecordCubit>()
        .state
        .records
        .singleWhere((element) => element.id == int.parse(id));

    String categoryName =
        context.read<CategoryCubit>().getCategoryName(record.categoryId);

    return Scaffold(
        appBar: AppBar(
          title: Text(categoryName),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                record.name,
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 32),
              Text(
                record.description,
                style: const TextStyle(fontSize: 18),
              ),
            ],
          ),
        ));
  }
}
