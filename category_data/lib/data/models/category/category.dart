import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'category.freezed.dart';
part 'category.g.dart';

@freezed
class Category with _$Category {
  @HiveType(typeId: 0, adapterName: 'CategoryAdapter')
  const factory Category({
    @HiveField(0) int? id,
    @HiveField(1) required String name,
  }) = _Category;

  factory Category.fromJson(Map<String, dynamic> json) =>
      _$CategoryFromJson(json);
}
