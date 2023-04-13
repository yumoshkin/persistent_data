import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:user_data/business/bank_card_cubit/bank_card_cubit.dart';
import 'package:user_data/data/models/bank_card/bank_card.dart';
import 'package:user_data/data/models/user/user.dart';

class UserListItemCard extends StatelessWidget {
  const UserListItemCard({Key? key, required this.user}) : super(key: key);
  final User user;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BankCardCubit, BankCardState>(
      builder: (_, state) {
        BankCard? bankCard =
            context.read<BankCardCubit>().getByUserId(user.id!);

        return RichText(
          textDirection: TextDirection.ltr,
          text: TextSpan(
            text: 'Банковская карта:\n',
            style: const TextStyle(
              color: Colors.black87,
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
            children: <TextSpan>[
              TextSpan(
                text: bankCard != null
                    ? '${bankCard.cardNumber}\n${bankCard.validThru}\n${bankCard.owner}'
                    : 'Нет данных \n \n ',
                style: const TextStyle(
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
