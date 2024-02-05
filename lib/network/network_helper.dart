import 'package:dio/dio.dart';
import 'package:login/network/interceptor/log_interceptor.dart';
import 'package:login/network/interceptor/token_interceptor.dart';

Dio createDio() {
  Dio dio = Dio();
  print("Init Create dio");
  dio.options = BaseOptions(
    baseUrl: 'https://opsapi-v2.mkart.dev/api/v1',
  );

  dio.interceptors.add(TokenInterceptor());
  dio.interceptors.add(LoggyInterceptor());

  return dio;
}
