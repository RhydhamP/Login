import 'package:dio/dio.dart';
import 'package:login/network/api/search_history_api.dart';

class SearchHistoryRepository implements SearchHistoryApi {
  Dio dio;
  SearchHistoryRepository({required this.dio});

  @override
  Future searchHistoryApi(Map<String, dynamic> body) {
    return dio.get("https://opsapi-v2.mkart.dev/api/v1/search/search-history",
        queryParameters: body);
  }
}
