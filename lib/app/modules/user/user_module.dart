import 'package:base_app/app/modules/user/pages/home_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class UserModule extends Module {
  @override
  void routes(r) {
    r.child('/', child: (_) => const HomePage());
  }
}
