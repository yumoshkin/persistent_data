import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import 'package:category_data/business/cubits/category_cubit/category_cubit.dart';
import 'package:category_data/business/cubits/record_cubit/record_cubit.dart';
import 'package:category_data/ui/utils/functions.dart';
import 'package:category_data/ui/widgets/record_list.dart';

class RecordListScreen extends StatefulWidget {
  const RecordListScreen({Key? key, required this.categoryId})
      : super(key: key);
  final String categoryId;

  @override
  State<RecordListScreen> createState() => _RecordListScreenState();
}

class _RecordListScreenState extends State<RecordListScreen> {
  String _categoryName = '';

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      context
          .read<RecordCubit>()
          .loadRecordsByCategoryId(int.parse(widget.categoryId));

      _categoryName = context
          .read<CategoryCubit>()
          .getCategoryName(int.parse(widget.categoryId));
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.bold,
      color: Colors.black54,
    );

    return BlocListener<RecordCubit, RecordState>(
      listener: (context, state) {
        if (state.message.isNotEmpty) {
          showSnackBarSuccess(context, state.message);
        } else if (state.error.isNotEmpty) {
          showSnackBarError(context, state.error);
        }
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text(_categoryName),
        ),
        body: BlocBuilder<RecordCubit, RecordState>(
          builder: (context, state) {
            if (state is RecordStateLoading) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }

            if (state is RecordStateLoaded) {
              return RecordList(
                  records: state.records, categoryName: _categoryName);
            }

            if (state is RecordStateInitial) {
              return const Center(
                child: Text(
                  'Нет данных',
                  style: textStyle,
                ),
              );
            }

            if (state is RecordStateError) {
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
            context.go(
                '/record/${widget.categoryId}/record_form/0/${widget.categoryId}');
          },
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
