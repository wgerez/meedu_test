import 'package:complete_example/app/domain/repositories/auth_repository.dart';

class AuthRespositoryImpl implements AuthRespository {
  @override
  Future<String?> get accessToken async {
    await Future.delayed(const Duration(seconds: 1));
    return 'null';
  }
}
