import 'package:injectable/injectable.dart';

import 'package:user_data/data/dao/user_dao.dart';
import 'package:user_data/data/db/database.dart';
import 'package:user_data/data/models/user/user.dart';

@LazySingleton()
class UserService {
  AppDatabase? _database;
  UserDao? _userDao;

  Future<void> init() async {
    _database =
        await $FloorAppDatabase.databaseBuilder('app_database.db').build();
    _userDao = _database!.userDao;

    // load initial data
    List<User> users = await _userDao!.findAllUsers();
    if (users.isEmpty) {
      await add(
        User(
          id: 1,
          name: 'Иван',
          surname: 'Петров',
          age: 30,
          phone: '111-11-11',
          image: '',
        ),
      );
      await add(
        User(
          id: 2,
          name: 'Николай',
          surname: 'Васильев',
          age: 35,
          phone: '222-22-22',
          image: '',
        ),
      );
    }
  }

  Future<List<User>> getAll() async {
    List<User> users = [];
    users = await _userDao!.findAllUsers();
    return users;
  }

  Future<void> add(User user) async {
    var uniqueness = await checkUniqueness(user);
    if (!uniqueness) {
      throw Exception(
        'Пользователь с телефоном "${user.phone}" уже существует',
      );
    }

    await _database!.userDao.insertUser(user);
  }

  Future<void> update(User user) async {
    var uniqueness = await checkUniqueness(user);
    if (!uniqueness) {
      throw Exception(
        'Пользователь с телефоном  "${user.phone}" уже существует',
      );
    }

    await _database!.userDao.updateUser(user);
  }

  Future<void> delete(User user) async {
    await _database!.userDao.deleteUser(user);
  }

  Future<bool> checkUniqueness(User user) async {
    if (user.id == null) {
      var result = await _database!.userDao.findUserByPhone(user.phone);
      if (result != null) {
        return false;
      }
    } else {
      var result = await _database!.userDao.findUserByPhone(user.phone);
      if (result != null && result.id != user.id) {
        return false;
      }
    }

    return true;
  }
}
