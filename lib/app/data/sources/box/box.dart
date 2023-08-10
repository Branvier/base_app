abstract class IBox {
  ///Reads [key], if null, sets and gets [or].
  Object? read(String key);

  ///Gets all data.
  Map<String, dynamic> readAll();

  ///Writes [data] in [key].
  Future<void> write(String key, data);

  ///Removes data in [key].
  Future<void> delete(String key);

  ///Clear all data.
  Future<void> deleteAll();
}
