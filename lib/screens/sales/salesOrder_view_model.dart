import 'package:flutter/material.dart';
import 'package:login/base_view_model.dart';
import 'package:login/models/sales/sales_model.dart';
import 'package:login/models/search/product_model.dart';
import 'package:login/models/search/search_model.dart';
import 'package:login/repository/salesOrder_repository.dart';
import 'package:login/utils/date_formatter.dart';

class SalesOrderViewModel extends BaseViewModel {
  final SalesOrderRepository salesOrderRepository;

  SalesOrderViewModel(this.salesOrderRepository);

  ValueNotifier<DateTimeRange?> dateProvider = ValueNotifier(null);

  ValueNotifier<List<SalesOrderItem>> salesOrderItemsProvider =
      ValueNotifier([]);

  final TextEditingController searchController = TextEditingController();

  ValueNotifier<List<ProductModel>> productListProvider = ValueNotifier([]);

  int? productWsCode;

  callDateFilterApi(
      {required Function onSuccess, required Function onFail}) async {
    try {
      await salesOrderRepository.dateFilterApi({
        'from_date': dateProvider.value?.start.toFormate(),
        'to_date': dateProvider.value?.end.toFormate()
      }).then((response) async {
        // print("Api filer==========================${[response.data['sales_orders_items']]}");
        final res = SalesOrderResponse.fromJson(response.data);
        salesOrderItemsProvider.value = res.salesOrderItem;
        debugPrint(
            "Succuu 9999999999990()))))))))))()(()$salesOrderItemsProvider");
      });
    } catch (e) {
      print(e);
    }
  }

  callCheckAvailability(
      {required Function onSuccess,
      required Function onFail,
      required String query}) async {
    try {
      await salesOrderRepository
          .checkAvailability({'q': query}).then((response) async {
        final res = SearchModel.fromJson(response.data);
        productListProvider.value = res.products;
        debugPrint("&&&&&&&&&&&&& ${productListProvider.value}");
      });
    } catch (e) {
      print(e);
    }
  }

  callDateAndProductFilterApi(
      {required Function onSuccess, required Function onFail}) async {
    try {
      await salesOrderRepository.dateFilterApi({
        'ws_code': productWsCode,
        'from_date': dateProvider.value?.start.toFormate(),
        'to_date': dateProvider.value?.end.toFormate()
      }).then((response) async {
        final res = SalesOrderResponse.fromJson(response.data);
        salesOrderItemsProvider.value = res.salesOrderItem;
      });
    } catch (e) {
      print(e);
    }
  }

  callDateAndSOFilterApi(
      {required Function onSuccess,
      required Function onFail,
      required String searchSO}) async {
    try {
      await salesOrderRepository.dateFilterApi({
        'search': searchSO,
        'from_date': dateProvider.value?.start.toFormate(),
        'to_date': dateProvider.value?.end.toFormate()
      }).then((response) async {
        final res = SalesOrderResponse.fromJson(response.data);
        salesOrderItemsProvider.value = res.salesOrderItem;
      });
    } catch (e) {
      print(e);
    }
  }

  callDateAndStatusFilterApi(
      {required Function onSuccess,
      required Function onFail,
      required String status}) async {
    try {
      await salesOrderRepository.dateFilterApi({
        'status': status,
        'from_date': dateProvider.value?.start.toFormate(),
        'to_date': dateProvider.value?.end.toFormate()
      }).then((response) async {
        final res = SalesOrderResponse.fromJson(response.data);
        salesOrderItemsProvider.value = res.salesOrderItem;
      });
    } catch (e) {
      print(e);
    }
  }

  callDateStatusProductFilterApi(
      {required Function onSuccess,
      required Function onFail,
      required String status}) async {
    try {
      await salesOrderRepository.dateFilterApi({
        'status': status,
        'ws_code': productWsCode,
        'from_date': dateProvider.value?.start.toFormate(),
        'to_date': dateProvider.value?.end.toFormate(),
      }).then((response) async {
        final res = SalesOrderResponse.fromJson(response.data);
        salesOrderItemsProvider.value = res.salesOrderItem;
      });
    } catch (e) {
      print(e);
    }
  }

  callDateStatusSOFilterApi(
      {required Function onSuccess,
      required Function onFail,
      required String status,
      required String searchSO}) async {
    try {
      await salesOrderRepository.dateFilterApi({
        'status': status,
        'search': searchSO,
        'from_date': dateProvider.value?.start.toFormate(),
        'to_date': dateProvider.value?.end.toFormate(),
      }).then((response) async {
        final res = SalesOrderResponse.fromJson(response.data);
        salesOrderItemsProvider.value = res.salesOrderItem;
      });
    } catch (e) {
      print(e);
    }
  }
}
