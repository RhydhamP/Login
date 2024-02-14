import 'package:flutter/material.dart';
import 'package:login/base_view_model.dart';
import 'package:login/models/history/history_search_model.dart';
import 'package:login/repository/searchHistory_repository.dart';
import 'package:login/utils/date_formatter.dart';

import '../../models/search/product_search_model.dart';
import '../../models/store/store_model.dart';
import '../../repository/salesOrder_repository.dart';

class SearchHistoryViewModel extends BaseViewModel {
  final SearchHistoryRepository searchHistoryRepository;
  final SalesOrderRepository salesOrderRepository;

  SearchHistoryViewModel(
      this.searchHistoryRepository, this.salesOrderRepository);

  final TextEditingController productSearchController = TextEditingController();
  ValueNotifier<int?> productWsCode = ValueNotifier(null);
  ValueNotifier<List<Product>> productListProvider = ValueNotifier([]);

  final TextEditingController storeSearchController = TextEditingController();
  ValueNotifier<List<Store>> storeListProvider = ValueNotifier([]);
  ValueNotifier<String?> storeCode = ValueNotifier(null);

  ValueNotifier<DateTimeRange?> dateProvider = ValueNotifier(null);

  ValueNotifier<List<SearchReport>> searchHistoryListProvider =
      ValueNotifier([]);

  Future<List<Product>> callProductSearchApi(
      {required Function onSuccess,
      required Function onFail,
      required String query}) async {
    try {
      return await salesOrderRepository
          .productSearchApi({'q': query}).then((response) async {
        final res = Search.fromJson(response.data);
        productListProvider.value = res.products;
        return res.products;
      });
    } catch (e) {
      print(e);
      return [];
    }
  }

  callStoreSearchApi(
      {required Function onSuccess,
      required Function onFail,
      required String query}) async {
    try {
      await salesOrderRepository
          .storeSearchApi({'q': query}).then((response) async {
        final res = StoreResponse.fromJson(response.data);
        storeListProvider.value = res.data;
      });
    } catch (e) {
      print(e);
    }
  }

  clearDateFilter() {
    dateProvider.value = null;
    callSearchHistoryApi();
    return;
  }

  clearStoreFilter() {
    storeCode.value = null;
    storeSearchController.clear();
    callSearchHistoryApi();
    return;
  }

  callSearchHistoryApi() async {
    var requestBody = {
      'store_code': storeCode.value ?? '',
      'from_date': dateProvider.value?.start.toFormate() ?? '',
      'to_date': dateProvider.value?.end.toFormate() ?? '',
      'product': (productWsCode.value ?? '').toString()
    };

    requestBody.removeWhere((key, value) => value.toString().isEmpty);

    try {
      await searchHistoryRepository
          .searchHistoryApi(requestBody)
          .then((response) async {
        final res = SearchHistoryResponse.fromJson(response.data);
        searchHistoryListProvider.value = res.searchReport;
      });
    } catch (e) {
      print(e);
    }
  }
}
