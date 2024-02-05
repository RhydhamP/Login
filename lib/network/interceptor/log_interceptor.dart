import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class LoggyInterceptor extends Interceptor{
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    // TODO: implement onRequest
    debugPrint("API Request data ${options.data}");
    debugPrint("API Request queryParameters ${options.queryParameters}");
    debugPrint("API Request uri ${options.uri}");
    debugPrint("API Request headers ${options.headers}");

    super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    // TODO: implement onResponse
    debugPrint("API Response ${response.data}");

    super.onResponse(response, handler);
  }
}