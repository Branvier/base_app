import 'package:base_app/app/data/sources/api/dio_api.dart';
import 'package:base_app/app/modules/auth/auth_module.dart';
import 'package:base_app/app/modules/user/user_module.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppModule extends Module {
  @override
  void binds(i) {
    i.addSingleton(DioApi.new);
  }

  @override
  void routes(r) {
    r.module('/', module: UserModule());
    r.module('/auth', module: AuthModule());
  }
}
