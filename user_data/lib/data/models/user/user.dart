import 'package:floor/floor.dart';

@entity
class User {
  @primaryKey
  final int? id;
  final String name;
  final String surname;
  final int age;
  final String phone;
  final String? image;

  User({
    this.id,
    required this.name,
    required this.surname,
    required this.age,
    required this.phone,
    this.image,
  });
}
