import 'package:complete_example/app/data/data_source/remote/authentication_api.dart';
import 'package:complete_example/app/domain/repositories/auth_repository.dart';
import 'package:complete_example/app/domain/responses/login_response.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

// ignore: constant_identifier_names
const TOKEN = 'TOKEN';

class AuthRespositoryImpl implements AuthRespository {
  final AuthenticationAPI _api;
  final FlutterSecureStorage _storage;

  AuthRespositoryImpl(this._api, this._storage);

  @override
  Future<String?> get accessToken async {
    return _storage.read(key: TOKEN);
  }

  @override
  Future<LoginResponse> login(String email, String password) async {
    final result = await _api.login(email, password);
    if (result.item1 == LoginResponse.ok) {
      await _storage.write(key: TOKEN, value: result.item2);
    }
    return result.item1;
  }
}
