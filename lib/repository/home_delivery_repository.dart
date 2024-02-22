import 'package:dio/dio.dart';
import 'package:login/network/api/home_delivery_api.dart';

class HomeDeliveryReppository implements HomeDeliveryApi {
  Dio dio;
  HomeDeliveryReppository({required this.dio});

  @override
  Future storeOrderApi(Map<String, dynamic> body) {
    return dio.get("https://opsapi-v2.mkart.dev/api/v1/orders/store-orders",
        queryParameters: body);
  }

  @override
  Future storeSearchApi(Map<String, dynamic> body) {
    return dio.get("https://opsapi-v2.mkart.dev/api/v1/store/search",
        queryParameters: body);
  }
}
