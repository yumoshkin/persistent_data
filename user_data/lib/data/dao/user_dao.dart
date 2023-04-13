import 'package:floor/floor.dart';

import 'package:user_data/data/models/user/user.dart';

@dao
abstract class UserDao {
  @Query('SELECT * FROM User')
  Future<List<User>> findAllUsers();

  @Query('SELECT * FROM User where id = :id')
  Future<User?> findUserById(int id);

  @Query('SELECT * FROM User where name = :name')
  Future<User?> findUserByName(String name);

  @Query('SELECT * FROM User where phone = :phone')
  Future<User?> findUserByPhone(String phone);

  @insert
  Future<int> insertUser(User user);

  @update
  Future<void> updateUser(User user);

  @delete
  Future<void> deleteUser(User user);
}
