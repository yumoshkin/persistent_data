import 'package:injectable/injectable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:user_data/data/models/user/user.dart';
import 'package:user_data/data/services/user_service.dart';

part 'user_state.dart';
part 'user_cubit.freezed.dart';

@injectable
class UserCubit extends Cubit<UserState> {
  UserCubit({required this.userService}) : super(const UserState.initial());
  final UserService userService;

  Future<void> init() async {
    emit(const UserState.loading());
    await userService.init();
    await loadUsers();
  }

  Future<void> loadUsers() async {
    try {
      emit(const UserState.loading());
      final List<User> users = await userService.getAll();

      if (users.isNotEmpty) {
        emit(UserState.loaded(users: users));
      } else {
        emit(const UserState.initial());
      }
    } catch (e) {
      emit(UserState.error(error: e.toString()));
    }
  }

  Future<void> addUser(User user) async {
    try {
      emit(const UserState.loading());
      await userService.add(user);
      final List<User> users = await userService.getAll();
      emit(UserState.loaded(users: users, message: 'Данные сохранены'));
    } catch (e) {
      emit(
          UserState.error(error: e.toString().replaceFirst('Exception: ', '')));
    }
  }

  Future<void> updateUser(User user) async {
    try {
      emit(const UserState.loading());
      await userService.update(user);
      final List<User> users = await userService.getAll();
      emit(UserState.loaded(users: users, message: 'Данные сохранены'));
    } catch (e) {
      emit(
        UserState.error(error: e.toString().replaceFirst('Exception: ', '')),
      );
    }
  }

  Future<void> deleteUser(User user) async {
    try {
      await userService.delete(user);
      emit(const UserState.loading());
      final List<User> users = await userService.getAll();

      if (users.isNotEmpty) {
        emit(UserState.loaded(users: users, message: 'Данные удалены'));
      } else {
        emit(const UserState.initial(message: 'Данные удалены'));
      }
    } catch (e) {
      emit(UserState.error(error: e.toString()));
    }
  }
}
