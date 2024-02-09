import 'package:flutter/material.dart';
import 'package:login/base_view_model.dart';
import 'package:login/models/sales/sales_model.dart';
import 'package:login/models/search/product_model.dart';
import 'package:login/models/search/search_model.dart';
import 'package:login/models/store/store_model.dart';
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

  final TextEditingController storeSearchController = TextEditingController();
  ValueNotifier<List<Store>> storeListProvider = ValueNotifier([]);

  int? productWsCode;
  String? storeCode;
  bool isDateSelected = false;

  callProductSearchApi(
      {required Function onSuccess,
      required Function onFail,
      required String query}) async {
    try {
      await salesOrderRepository
          .productSearchApi({'q': query}).then((response) async {
        final res = SearchModel.fromJson(response.data);
        productListProvider.value = res.products;
      });
    } catch (e) {
      print(e);
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

  callDateFilterApi(
      {required Function onSuccess, required Function onFail}) async {
    try {
      await salesOrderRepository.dateFilterApi({
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

  callStatusFilterApi(
      {required Function onSuccess,
      required Function onFail,
      required String status}) async {
    try {
      await salesOrderRepository
          .dateFilterApi({'status': status}).then((response) async {
        final res = SalesOrderResponse.fromJson(response.data);
        salesOrderItemsProvider.value = res.salesOrderItem;
      });
    } catch (e) {
      print(e);
    }
  }

  callStoreFilterApi(
      {required Function onSuccess, required Function onFail}) async {
    try {
      await salesOrderRepository
          .dateFilterApi({'store_code': storeCode}).then((response) async {
        final res = SalesOrderResponse.fromJson(response.data);
        salesOrderItemsProvider.value = res.salesOrderItem;
      });
    } catch (e) {
      print(e);
    }
  }

  callDateStatusFilterApi(
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

  callDateStoreFilterApi(
      {required Function onSuccess, required Function onFail}) async {
    try {
      await salesOrderRepository.dateFilterApi({
        'from_date': dateProvider.value?.start.toFormate(),
        'to_date': dateProvider.value?.end.toFormate(),
        'store_code': storeCode
      }).then((response) async {
        final res = SalesOrderResponse.fromJson(response.data);
        salesOrderItemsProvider.value = res.salesOrderItem;
      });
    } catch (e) {
      print(e);
    }
  }

  callStatusStoreFilterApi(
      {required Function onSuccess,
      required Function onFail,
      required String status}) async {
    try {
      await salesOrderRepository.dateFilterApi(
          {'status': status, 'store_code': storeCode}).then((response) async {
        final res = SalesOrderResponse.fromJson(response.data);
        salesOrderItemsProvider.value = res.salesOrderItem;
      });
    } catch (e) {
      print(e);
    }
  }

  callDateStatusStoreFilterApi(
      {required Function onSuccess,
      required Function onFail,
      required String status}) async {
    try {
      await salesOrderRepository.dateFilterApi({
        'from_date': dateProvider.value?.start.toFormate(),
        'to_date': dateProvider.value?.end.toFormate(),
        'status': status,
        'store_code': storeCode
      }).then((response) async {
        final res = SalesOrderResponse.fromJson(response.data);
        salesOrderItemsProvider.value = res.salesOrderItem;
      });
    } catch (e) {
      print(e);
    }
  }

  callProductFilterApi(
      {required Function onSuccess, required Function onFail}) async {
    try {
      await salesOrderRepository.dateFilterApi({
        'ws_code': productWsCode,
      }).then((response) async {
        final res = SalesOrderResponse.fromJson(response.data);
        salesOrderItemsProvider.value = res.salesOrderItem;
      });
    } catch (e) {
      print(e);
    }
  }

  callProductDateFilterApi(
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

  callProductStatusFilterApi(
      {required Function onSuccess,
      required Function onFail,
      required String status}) async {
    try {
      await salesOrderRepository.dateFilterApi(
          {'ws_code': productWsCode, 'status': status}).then((response) async {
        final res = SalesOrderResponse.fromJson(response.data);
        salesOrderItemsProvider.value = res.salesOrderItem;
      });
    } catch (e) {
      print(e);
    }
  }

  callProductStoreFilterApi(
      {required Function onSuccess, required Function onFail}) async {
    try {
      await salesOrderRepository.dateFilterApi({
        'ws_code': productWsCode,
        'store_code': storeCode
      }).then((response) async {
        final res = SalesOrderResponse.fromJson(response.data);
        salesOrderItemsProvider.value = res.salesOrderItem;
      });
    } catch (e) {
      print(e);
    }
  }

  callProductDateStatusFilterApi(
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

  callProductDateStoreFilterApi(
      {required Function onSuccess, required Function onFail}) async {
    try {
      await salesOrderRepository.dateFilterApi({
        'from_date': dateProvider.value?.start.toFormate(),
        'to_date': dateProvider.value?.end.toFormate(),
        'store_code': storeCode,
        'ws_code': productWsCode
      }).then((response) async {
        final res = SalesOrderResponse.fromJson(response.data);
        salesOrderItemsProvider.value = res.salesOrderItem;
      });
    } catch (e) {
      print(e);
    }
  }

  callProductStatusStoreFilterApi(
      {required Function onSuccess,
      required Function onFail,
      required String status}) async {
    try {
      await salesOrderRepository.dateFilterApi({
        'status': status,
        'store_code': storeCode,
        'ws_code': productWsCode
      }).then((response) async {
        final res = SalesOrderResponse.fromJson(response.data);
        salesOrderItemsProvider.value = res.salesOrderItem;
      });
    } catch (e) {
      print(e);
    }
  }

  callProductDateStatusStoreFilterApi(
      {required Function onSuccess,
      required Function onFail,
      required String status}) async {
    try {
      await salesOrderRepository.dateFilterApi({
        'from_date': dateProvider.value?.start.toFormate(),
        'to_date': dateProvider.value?.end.toFormate(),
        'store_code': storeCode,
        'ws_code': productWsCode,
        'status': status
      }).then((response) async {
        final res = SalesOrderResponse.fromJson(response.data);
        salesOrderItemsProvider.value = res.salesOrderItem;
      });
    } catch (e) {
      print(e);
    }
  }

  callDateAndSOFilterApi(
      {required Function onSuccess, required Function onFail}) async {
    try {
      await salesOrderRepository.dateFilterApi({
        'search': "${searchController.text},so_number",
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

  callDateStatusSOFilterApi(
      {required Function onSuccess,
      required Function onFail,
      required String status}) async {
    try {
      await salesOrderRepository.dateFilterApi({
        'status': status,
        'search': "${searchController.text},so_number",
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
