import 'package:category_data/data/models/record/record.dart';

abstract class RecordService {
  Future<List<Record>> getAll();
  Future<List<Record>> getByCategoryId(int id);
  Future<Record?> getById(int id);
  Future<void> add(Record record);
  Future<void> update(Record record);
  Future<void> delete(int id);
}
