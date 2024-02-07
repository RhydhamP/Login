import 'package:dio/dio.dart';
import 'package:login/network/api/salesOrder_api.dart';

class SalesOrderRepository implements SalesOrderApi {
  Dio dio;
  SalesOrderRepository({required this.dio});

  @override
  Future dateFilterApi(Map<String, dynamic> body) {
    // TODO: implement dateFilterApi
    return dio.get("https://opsapi-v2.mkart.dev/api/v1/orders/sales-orders",
        queryParameters: body);
  }
}
