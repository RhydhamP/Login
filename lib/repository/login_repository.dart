import 'package:dio/dio.dart';
import 'package:login/network/api/login_api.dart';

class LoginRepository implements LoginApi {
  Dio dio;
  LoginRepository({required this.dio});
  
  @override
  Future<Response> loginApi(Map<String, dynamic> data) {
    return dio.post('/login', data: data);
  }
}
