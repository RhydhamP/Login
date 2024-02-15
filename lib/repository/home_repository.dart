import 'package:dio/dio.dart';
import 'package:login/network/api/home_api.dart';

class HomeRepository implements CheckAvailability {
  Dio dio;
  HomeRepository({required this.dio});

  @override
  Future<Response> checkAvailability(Map<String, dynamic> data) {
    return dio.get("https://ecom.mkart.dev/api/v1/product/check-available",
        queryParameters: data);
  }

  @override
  Future addToList(Map<String, dynamic> body) async {
    // final SharedPreferences prefs = await SharedPreferences.getInstance();

    // final String? token = prefs.getString(authTokenKey);
    return dio.get("https://opsapi-v2.mkart.dev/api/v1/search/medicine-search",
        queryParameters: body);
  }
}
