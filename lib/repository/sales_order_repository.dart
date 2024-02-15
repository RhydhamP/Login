import 'package:dio/dio.dart';
import 'package:login/network/api/sales_order_api.dart';

class SalesOrderRepository implements SalesOrderApi {
  Dio dio;
  SalesOrderRepository({required this.dio});

  @override
  Future dateFilterApi(Map<String, dynamic> body) {
    return dio.get("https://opsapi-v2.mkart.dev/api/v1/orders/sales-orders",
        queryParameters: body);
  }

  @override
  Future productSearchApi(Map<String, dynamic> body) {
    return dio.get("https://ecom.mkart.dev/api/v1/product/check-available",
        queryParameters: body);
  }

  @override
  Future storeSearchApi(Map<String, dynamic> body) {
    return dio.get("https://opsapi-v2.mkart.dev/api/v1/store/search",
        queryParameters: body);
  }

  // @override
  // Future dateFilterAndProductApi(Map<String, dynamic> body) {
  //   return dio.get("https://opsapi-v2.mkart.dev/api/v1/orders/sales-orders",
  //       queryParameters: body);
  // }

  // @override
  // Future dateFilterAndSOApi(Map<String, dynamic> body) {
  //   return dio.get("https://opsapi-v2.mkart.dev/api/v1/orders/sales-orders",
  //       queryParameters: body);
  // }

  // @override
  // Future dateAndStatusFilterApi(Map<String, dynamic> body) {
  //   return dio.get("https://opsapi-v2.mkart.dev/api/v1/orders/sales-orders",
  //       queryParameters: body);
  // }

  // @override
  // Future dateAndStatusAndProductFilterApi(Map<String, dynamic> body) {
  //   return dio.get("https://opsapi-v2.mkart.dev/api/v1/orders/sales-orders",
  //       queryParameters: body);
  // }


}
