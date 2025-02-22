import 'package:dio/dio.dart';

import 'token_interceptor.dart';

Dio getFoodyDio({
  TokenInterceptor? tokenInterceptor,
  String baseUrl = 'https://foody.convertino.cloud/api/v1',
}) {
  Dio dio = Dio(
    BaseOptions(
      baseUrl: baseUrl,
      contentType: Headers.jsonContentType,
      responseType: ResponseType.json,
      connectTimeout: const Duration(seconds: 15),
      receiveTimeout: const Duration(seconds: 15),
    ),
  );

  if (tokenInterceptor != null) dio.interceptors.add(tokenInterceptor);

  return dio;
}
