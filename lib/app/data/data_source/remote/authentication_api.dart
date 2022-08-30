import 'dart:async';
import 'dart:io';

import 'package:complete_example/app/data/helpers/http.dart';
import 'package:complete_example/app/data/helpers/http_method.dart';
import 'package:complete_example/app/domain/responses/login_response.dart';

class AuthenticationAPI {
  final Http _http;

  AuthenticationAPI(this._http);

  Future<LoginResponse> login(String email, String password) async {
    final result = await _http.request<String>(
      '/api/login',
      method: HttpMethod.post,
      body: {
        'email': email,
        'password': password,
      },
      parser: (data) {
        return data['token'];
      },
    );
    print("result data ${result.data}");
    print("result data runtimeType ${result.data.runtimeType}");
    print("result error ${result.error}");
    print("result statusCode ${result.statusCode}");
    if (result.error != null) {
      return LoginResponse.ok;
    }

    if (result.statusCode == 400) {
      return LoginResponse.accessDenied;
    }

    final error = result.error!.exception;
    if (error is SocketException || error is TimeoutException) {
      return LoginResponse.networkError;
    }

    return LoginResponse.unknownError;
  }
}
