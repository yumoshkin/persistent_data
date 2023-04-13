import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:user_data/business/bank_card_cubit/bank_card_cubit.dart';
import 'package:user_data/business/user_cubit/user_cubit.dart';
import 'package:user_data/data/models/user/user.dart';

class UserDeleteDialog extends StatelessWidget {
  final User user;
  const UserDeleteDialog({Key? key, required this.user}) : super(key: key);

  void delete(BuildContext context, [bool mounted = true]) async {
    context.read<BankCardCubit>().deleteBankCard(user.id!);
    await context.read<UserCubit>().deleteUser(user);
    if (mounted) {
      Navigator.pop(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Подтверждение'),
      content: Text(
        'Удалить пользователя "${user.name}"?',
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
