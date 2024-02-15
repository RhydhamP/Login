import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:login/utils/constant.dart';
import 'package:shared_preferences/shared_preferences.dart';

class TokenInterceptor extends Interceptor {
  @override
  Future<void> onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    final String? token = prefs.getString(authTokenKey);

    debugPrint("Token call +========= $token");
    options.headers.addAll({"Authorization": "Bearer $token"});
    super.onRequest(options, handler);
  }
}
