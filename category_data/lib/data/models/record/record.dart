import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'record.freezed.dart';
part 'record.g.dart';

@freezed
class Record with _$Record {
  @HiveType(typeId: 1, adapterName: 'RecordAdapter')
  const factory Record({
    @HiveField(0) int? id,
    @HiveField(1) required int categoryId,
    @HiveField(2) required String name,
    @HiveField(3) required String description,
  }) = _Record;

  factory Record.fromJson(Map<String, dynamic> json) => _$RecordFromJson(json);
}
