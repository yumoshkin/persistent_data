import 'dart:io';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

import 'package:image_storage/data/models/img.dart';
import 'package:path_provider/path_provider.dart';

@LazySingleton()
class ImageService {
  Database? db;

  Future<void> init() async {
    db = await openDatabase(
      join(await getDatabasesPath(), 'images_database.db'),
      onCreate: (db, version) {
        return db.execute(
          'CREATE TABLE images(id INTEGER PRIMARY KEY, url TEXT, path TEXT)',
        );
      },
      version: 1,
    );
  }

  Future<List<Img>> getAll() async {
    List<Map<String, Object?>>? images = [];
    List<Img> imagesList = [];

    // if (db != null) {
    images = await db!.query('images');
    imagesList = images.isNotEmpty
        ? images.map((element) => Img.fromJson(element)).toList()
        : [];
    // }

    return imagesList;
  }

  Future<void> add(Img img) async {
    var uniqueness = await checkUniqueness(img);
    if (!uniqueness) {
      throw Exception('Url "${img.url}" уже существует');
    }

    final file = await downloadFile(img.url);
    if (file == null) {
      return;
    }

    await db!.insert(
      'images',
      img.copyWith(path: file.path).toJson(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  Future<void> update(Img img) async {
    var uniqueness = await checkUniqueness(img);
    if (!uniqueness) {
      throw Exception('Url "${img.url}" уже существует');
    }

    await db!.update(
      'images',
      img.toJson(),
      where: 'id = ?',
      whereArgs: [img.id],
    );
  }

  Future<void> delete(int id) async {
    await db!.delete(
      'images',
      where: 'id = ?',
      whereArgs: [id],
    );
  }

  Future<bool> checkUniqueness(Img img) async {
    if (img.id == null) {
      var images =
          await db!.query('images', where: "url = ?", whereArgs: [img.url]);
      if (images.isNotEmpty) {
        return false;
      }
    } else {
      var images = await db!.query('images',
          where: "url = ? and id != ?", whereArgs: [img.url, img.id]);
      if (images.isNotEmpty) {
        return false;
      }
    }

    return true;
  }

  Future<File?> downloadFile(String url) async {
    final appStorage = await getApplicationDocumentsDirectory();
    final name = url.substring(url.lastIndexOf('/') + 1);
    final file = File('${appStorage.path}/$name');

    try {
      final response = await Dio().get(
        url,
        options: Options(
          responseType: ResponseType.bytes,
          followRedirects: false,
          receiveTimeout: null,
        ),
      );

      final raf = file.openSync(mode: FileMode.write);
      raf.writeFromSync(response.data);
      await raf.close();

      return file;
    } catch (e) {
      return null;
    }
  }
}
