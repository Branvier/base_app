import 'package:base_app/app/data/sources/api/api.dart';
import 'package:dio/dio.dart';

class DioApi implements Api {
  final Dio dio = Dio();

  @override
  set baseUrl(String url) => dio.options.baseUrl = url;

  @override
  Map<String, dynamic> get headers => dio.options.headers;

  @override
  Future delete(String path) => dio.delete(path);

  @override
  Future get(String path) => dio.get(path);

  @override
  Future post(String path, [data]) => dio.post(path, data: data);

  @override
  Future put(String path, [data]) => dio.put(path, data: data);
}
