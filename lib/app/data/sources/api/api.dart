abstract class Api {
  ///Headers to attach to the request. Usually String or List<String>.
  Map<String, dynamic> get headers;

  ///Changes the baseUrl.
  set baseUrl(String url);

  ///CREATE.
  Future post(String path, [data]);

  ///READ.
  Future get(String path);

  ///UPDATE.
  Future put(String path, [data]);

  ///DELETE.
  Future delete(String path);
}
