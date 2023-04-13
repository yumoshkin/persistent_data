import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import 'package:user_data/business/bank_card_cubit/bank_card_cubit.dart';
import 'package:user_data/data/models/bank_card/bank_card.dart';
import 'package:user_data/data/models/user/user.dart';
import 'package:user_data/ui/widgets/user_delete_dialog.dart';

class UserListItemPopup extends StatefulWidget {
  const UserListItemPopup({Key? key, required this.user}) : super(key: key);
  final User user;

  @override
  State<UserListItemPopup> createState() => _UserListItemPopupState();
}

class _UserListItemPopupState extends State<UserListItemPopup> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BankCardCubit, BankCardState>(builder: (_, state) {
      BankCard? bankCard =
          context.read<BankCardCubit>().getByUserId(widget.user.id!);

      return PopupMenuButton(
        icon: const Icon(Icons.more_horiz),
        color: Colors.white,
        itemBuilder: (BuildContext context) => [
          PopupMenuItem(
            onTap: () {
              context.go('/user_form/${widget.user.id}');
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
                            UserDeleteDialog(user: widget.user),
                        barrierDismissible: false,
                      ));
            },
            child: const Text('Удалить'),
          ),
          PopupMenuItem(
            onTap: () {
              context.go('/bank_card_form/${widget.user.id}');
            },
            child: Text(bankCard != null ? 'Изменить карту' : 'Добавить карту'),
          ),
        ],
      );
    });
  }
}
