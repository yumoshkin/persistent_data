import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import 'package:category_data/business/cubits/record_cubit/record_cubit.dart';
import 'package:category_data/data/models/record/record.dart';
import 'package:category_data/ui/utils/functions.dart';
import 'package:category_data/ui/widgets/form_field_memo.dart';
import 'package:category_data/ui/widgets/form_field_text.dart';

class RecordFormScreen extends StatefulWidget {
  const RecordFormScreen({
    Key? key,
    required this.id,
    required this.categoryId,
  }) : super(key: key);
  final String id;
  final String categoryId;

  @override
  State<RecordFormScreen> createState() => _RecordFormScreenState();
}

class _RecordFormScreenState extends State<RecordFormScreen> {
  final GlobalKey<FormState> _recordFormKey = GlobalKey<FormState>();

  Record? _record;

  final _nameController = TextEditingController();
  final _descriptionController = TextEditingController();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      setFields(int.parse(widget.id));
    });
  }

  @override
  void dispose() {
    _nameController.dispose();
    _descriptionController.dispose();
    super.dispose();
  }

  void setFields(int id) {
    if (widget.id != '0') {
      _record = context
          .read<RecordCubit>()
          .state
          .records
          .singleWhere((element) => element.id == id);
      _nameController.text = _record!.name;
      _descriptionController.text = _record!.description;
    }
  }

  void submit(BuildContext context) async {
    if (!(_recordFormKey.currentState?.validate() ?? false)) {
      return;
    }

    if (widget.id == '0') {
      final record = Record(
        categoryId: int.parse(widget.categoryId),
        name: _nameController.text,
        description: _descriptionController.text,
      );
      await context.read<RecordCubit>().addRecord(record);
    } else {
      await context.read<RecordCubit>().updateRecord(
            _record!.copyWith(
              name: _nameController.text,
              description: _descriptionController.text,
            ),
          );
    }

    popIfSuccess();
  }

  void popIfSuccess() {
    if (context.read<RecordCubit>().state.error.isEmpty) {
      context.pop();
    } else {
      context
          .read<RecordCubit>()
          .loadRecordsByCategoryId(int.parse(widget.categoryId));
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
          widget.id == '0' ? 'Новая запись' : 'Редактирование записи',
        ),
      ),
      body: Form(
        key: _recordFormKey,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                FormFieldText(
                  controller: _nameController,
                  labelText: 'Наименование',
                  autofocus: _record?.id == null,
                  isAutovalidate: true,
                  validator: (value) => validateRequiredField(
                      value, 'Наименование не должно быть пустым'),
                ),
                const SizedBox(height: 8),
                FormFieldMemo(
                  controller: _descriptionController,
                  labelText: 'Описание',
                  autofocus: false,
                  isAutovalidate: true,
                  validator: (value) => validateRequiredField(
                      value, 'Описание не должно быть пустым'),
                ),
                const SizedBox(height: 24),
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
