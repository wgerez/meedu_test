import 'package:complete_example/app/data/data_source/remote/authentication_api.dart';
import 'package:complete_example/app/data/repositories_impl/auth_repository_impl.dart';
import 'package:complete_example/app/domain/repositories/auth_repository.dart';
import 'package:flutter_meedu/meedu.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import 'data/helpers/http.dart';

Future<void> injectDependencies() async {
  final http = Http(baseUrl: 'http://reqres.in');
  FlutterSecureStorage secureStorage = const FlutterSecureStorage();

  Get.lazyPut<AuthRespository>(
    () => AuthRespositoryImpl(
      AuthenticationAPI(http),
      secureStorage,
    ),
  );
}
