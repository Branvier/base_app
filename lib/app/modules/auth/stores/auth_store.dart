import 'package:asp/asp.dart';
import 'package:base_app/app/data/models/user.dart';
import 'package:base_app/app/data/sources/api/api.dart';
import 'package:base_app/app/modules/auth/dtos/user_credential.dart';

class AuthStore {
  AuthStore(this._api);

  final Api _api;
  final _isLogged = Atom(false);

  bool get isLogged => _isLogged.value;

  Future<User> login(UserCredential user) async {
    await Future.delayed(const Duration(seconds: 1));
    // final result = await _api.post('/login', user.toMap());

    return User(id: '-1', name: user.name, email: user.email);
  }
}
