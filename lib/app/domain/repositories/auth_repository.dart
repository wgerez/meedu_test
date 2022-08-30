import '../responses/login_response.dart';

abstract class AuthRespository {
  Future<String?> get accessToken;
  Future<LoginResponse> login(String email, String password);
}
