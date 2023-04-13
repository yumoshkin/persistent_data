import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import 'package:user_data/business/user_cubit/user_cubit.dart';
import 'package:user_data/ui/utils/functions.dart';
import 'package:user_data/ui/widgets/user_list.dart';

class UserScreen extends StatelessWidget {
  const UserScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.bold,
      color: Colors.black54,
    );

    return BlocListener<UserCubit, UserState>(
      listener: (context, state) {
        if (state.message.isNotEmpty) {
          showSnackBarSuccess(context, state.message);
        } else if (state.error.isNotEmpty) {
          showSnackBarError(context, state.error);
        }
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Пользователи'),
        ),
        body: BlocBuilder<UserCubit, UserState>(
          builder: (context, state) {
            if (state is UserStateLoading) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }

            if (state is UserStateLoaded) {
              return UserList(users: state.users);
            }

            if (state is UserStateInitial) {
              return const Center(
                child: Text(
                  'Нет данных',
                  style: textStyle,
                ),
              );
            }

            if (state is UserStateError) {
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
            context.go('/user_form/0');
          },
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
