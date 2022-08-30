import 'package:client_api/api/http_method.dart';

class ApiRequest {
  final String url;
  final String method;
  final Map<String, dynamic>? query;
  final Map<String, dynamic>? headers;
  final dynamic body;

  ApiRequest({
    required this.url,
    required this.method,
    this.query,
    this.headers,
    this.body,
  });

  factory ApiRequest.get(
    String url, {
    Map<String, dynamic>? query,
    Map<String, dynamic>? headers,
  }) {
    return ApiRequest(
      url: url,
      method: HttpMethod.get,
      headers: headers,
      query: query,
    );
  }

  factory ApiRequest.post(
    String url, {
    Map<String, dynamic>? query,
    Map<String, dynamic>? headers,
    dynamic body,
  }) {
    return ApiRequest(
      url: url,
      method: HttpMethod.post,
      headers: headers,
      query: query,
      body: body,
    );
  }

  factory ApiRequest.put(
    String url, {
    Map<String, dynamic>? query,
    Map<String, dynamic>? headers,
    dynamic body,
  }) {
    return ApiRequest(
      url: url,
      method: HttpMethod.put,
      headers: headers,
      query: query,
      body: body,
    );
  }

  factory ApiRequest.patch(
    String url, {
    Map<String, dynamic>? query,
    Map<String, dynamic>? headers,
    dynamic body,
  }) {
    return ApiRequest(
      url: url,
      method: HttpMethod.patch,
      headers: headers,
      query: query,
      body: body,
    );
  }

  factory ApiRequest.delete(
    String url, {
    Map<String, dynamic>? query,
    Map<String, dynamic>? headers,
  }) {
    return ApiRequest(
      url: url,
      method: HttpMethod.delete,
      headers: headers,
      query: query,
    );
  }
}
