import 'package:base_app/app/data/sources/box/box.dart';
import 'package:hive/hive.dart';

class HiveBox implements IBox {
  late final storage = Hive.box('box');

  static Future<void> init() async {
    Hive.init('storage');
    await Hive.openBox('box');
  }

  @override
  Object? read(String key) => storage.get(key);

  @override
  Future<void> write(String key, data) => storage.put(key, data);

  @override
  Future<void> delete(String key) => storage.delete(key);

  @override
  Future<void> deleteAll() => storage.clear();

  @override
  Map<String, dynamic> readAll() => Map<String, dynamic>.from(storage.toMap());
}
