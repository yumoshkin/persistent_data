import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import 'package:user_data/business/user_cubit/user_cubit.dart';
import 'package:user_data/data/models/user/user.dart';
import 'package:user_data/ui/utils/functions.dart';
import 'package:user_data/ui/widgets/form_field_text.dart';

class UserFormScreen extends StatefulWidget {
  const UserFormScreen({Key? key, required this.id}) : super(key: key);
  final String id;

  @override
  State<UserFormScreen> createState() => _UserFormScreenState();
}

class _UserFormScreenState extends State<UserFormScreen> {
  final GlobalKey<FormState> _userFormKey = GlobalKey<FormState>();

  final _nameController = TextEditingController();
  final _surnameController = TextEditingController();
  final _ageController = TextEditingController();
  final _phoneController = TextEditingController();
  final _imageController = TextEditingController();

  User? _user;

  @override
  void initState() {
    super.initState();
    setFields(int.parse(widget.id));
  }

  @override
  void dispose() {
    _nameController.dispose();
    _surnameController.dispose();
    _ageController.dispose();
    _phoneController.dispose();
    _imageController.dispose();
    super.dispose();
  }

  void setFields(int id) {
    if (widget.id != '0') {
      final users = context.read<UserCubit>().state.users;
      _user = users.singleWhere((element) => element.id == id);
      _nameController.text = _user!.name;
      _surnameController.text = _user!.surname;
      _ageController.text = _user!.age.toString();
      _phoneController.text = _user!.phone;
      _imageController.text = _user!.image ?? '';
    }
  }

  Future<void> pickFile() async {
    final result = await FilePicker.platform.pickFiles();
    if (result != null) {
      _imageController.text = result.files.first.path!;
      setState(() {});
    }
  }

  void submit(BuildContext context) async {
    if (!(_userFormKey.currentState?.validate() ?? false)) {
      return;
    }

    final user = User(
      id: widget.id != '0' ? int.parse(widget.id) : null,
      name: _nameController.text,
      surname: _surnameController.text,
      age: int.parse(_ageController.text),
      phone: _phoneController.text,
      image: _imageController.text,
    );

    if (widget.id == '0') {
      await context.read<UserCubit>().addUser(user);
    } else {
      await context.read<UserCubit>().updateUser(user);
    }

    popIfSuccess();
  }

  void popIfSuccess() {
    if (context.read<UserCubit>().state.error.isEmpty) {
      context.pop();
    } else {
      context.read<UserCubit>().loadUsers();
    }
  }

  void cancel() {
    context.pop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.id == '0'
              ? 'Новый пользователь'
              : 'Редактирование пользователя',
        ),
      ),
      body: Form(
        key: _userFormKey,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CircleAvatar(
                      radius: 40,
                      backgroundImage: _imageController.text.isNotEmpty
                          ? Image.file(
                              File(_imageController.text),
                              fit: BoxFit.cover,
                            ).image
                          : null,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.amber[800],
                        textStyle: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      onPressed: pickFile,
                      child: const Text('Выбрать изображение'),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                FormFieldText(
                  controller: _nameController,
                  labelText: 'Имя',
                  validator: (value) => validateRequiredField(
                    value,
                    'Имя не должно быть пустым',
                  ),
                ),
                FormFieldText(
                  controller: _surnameController,
                  labelText: 'Фамилия',
                  validator: (value) => validateRequiredField(
                    value,
                    'Фамилия не должна быть пустой',
                  ),
                ),
                FormFieldText(
                  controller: _ageController,
                  labelText: 'Возраст',
                  validator: (value) => validateRequiredField(
                    value,
                    'Возраст не должен быть пустым',
                  ),
                ),
                FormFieldText(
                  controller: _phoneController,
                  labelText: 'Телефон',
                  validator: (value) => validateRequiredField(
                    value,
                    'Телефон не должен быть пустым',
                  ),
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
