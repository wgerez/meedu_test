import 'package:complete_example/app/data/data_source/remote/authentication_api.dart';
import 'package:complete_example/app/domain/repositories/auth_repository.dart';
import 'package:complete_example/app/domain/responses/login_response.dart';

class AuthRespositoryImpl implements AuthRespository {
  final AuthenticationAPI _api;

  AuthRespositoryImpl(this._api);

  @override
  Future<String?> get accessToken async {
    await Future.delayed(const Duration(seconds: 1));
    return 'null';
  }

  @override
  Future<LoginResponse> login(String email, String password) {
    return _api.login(email, password);
  }
}
