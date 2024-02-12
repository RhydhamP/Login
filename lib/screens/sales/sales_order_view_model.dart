import 'package:flutter/material.dart';
import 'package:login/base_view_model.dart';
import 'package:login/models/sales/filter_searchType_model.dart';
import 'package:login/models/sales/sales_model.dart';
import 'package:login/models/search/product_model.dart';
import 'package:login/models/search/search_model.dart';
import 'package:login/models/store/store_model.dart';
import 'package:login/repository/salesOrder_repository.dart';
import 'package:login/utils/date_formatter.dart';

import '../../enum/sale_filter_enum.dart';
import '../../models/sales/filter_status_model.dart';

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

  String? dropDownValue1 = "Product";
  int? productWsCode;
  String? storeCode;
  bool isDateSelected = false;

  List<SearchTypeModel> searchTypeList = [
    SearchTypeModel(
        searchTypeEnum: SalesSearchTypeEnum.product, label: "Product"),
    SearchTypeModel(searchTypeEnum: SalesSearchTypeEnum.so, label: "SO Number")
  ];
  ValueNotifier<SalesSearchTypeEnum?> selectedSearchType =
      ValueNotifier(SalesSearchTypeEnum.product);

  List<FilterStatusModel> statusFilterList = [
    FilterStatusModel(
        label: 'Accepted', statusEnum: SaleStatusFilterEnum.accepted),
    FilterStatusModel(
        label: 'Fulfilled', statusEnum: SaleStatusFilterEnum.fulfilled),
    FilterStatusModel(
        label: 'Cancelled', statusEnum: SaleStatusFilterEnum.cancelled),
    FilterStatusModel(
        label: 'Partially Fulfilled',
        statusEnum: SaleStatusFilterEnum.partiallyFulfilled),
    FilterStatusModel(
        label: 'UnAvailable', statusEnum: SaleStatusFilterEnum.unAvailable),
  ];
  ValueNotifier<SaleStatusFilterEnum?> selectedStatus = ValueNotifier(null);

  afterDateSelected() {
    if (searchController.text.isNotEmpty && dropDownValue1 == "Product") {
      if (storeSearchController.text.isNotEmpty) {
        callProductDateStoreFilterApi(onSuccess: () {}, onFail: () {});
      } else {
        callProductDateFilterApi(onSuccess: () {}, onFail: () {});
      }
    } else if (searchController.text.isNotEmpty && dropDownValue1 == "SO") {
      if (storeSearchController.text.isNotEmpty) {
        callSODateStoreFilterApi(onSuccess: () {}, onFail: () {});
      } else {
        callSODateFilterApi(onSuccess: () {}, onFail: () {});
      }
    } else if (storeSearchController.text.isNotEmpty) {
      callDateStoreFilterApi(onSuccess: () {}, onFail: () {});
    } else {
      callDateFilterApi(onSuccess: () {}, onFail: () {});
    }
  }

  afterStatusSelected() {
    var value = selectedStatus.value?.value ?? '';

    if (searchController.text.isNotEmpty && dropDownValue1 == "Product") {
      if (isDateSelected && storeSearchController.text.isNotEmpty) {
        callProductDateStatusStoreFilterApi(
            onSuccess: () {}, onFail: () {}, status: value);
      } else if (isDateSelected) {
        callProductDateStatusFilterApi(
            onSuccess: () {}, onFail: () {}, status: value);
      } else if (storeSearchController.text.isNotEmpty) {
        callProductStatusStoreFilterApi(
            onSuccess: () {}, onFail: () {}, status: value);
      } else {
        callProductStatusFilterApi(
            onSuccess: () {}, onFail: () {}, status: value);
      }
    } else if (searchController.text.isNotEmpty &&
        dropDownValue1 == "SO Number") {
      if (isDateSelected && storeSearchController.text.isNotEmpty) {
        callSODateStatusStoreFilterApi(
            onSuccess: () {}, onFail: () {}, status: value);
      } else if (isDateSelected) {
        callSODateStatusFilterApi(
            onSuccess: () {}, onFail: () {}, status: value);
      } else if (storeSearchController.text.isNotEmpty) {
        callSOStatusStoreFilterApi(
            onSuccess: () {}, onFail: () {}, status: value);
      } else {
        callSOStatusFilterApi(onSuccess: () {}, onFail: () {}, status: value);
      }
    } else if (isDateSelected && storeSearchController.text.isNotEmpty) {
      callDateStatusStoreFilterApi(
          onSuccess: () {}, onFail: () {}, status: value);
    } else if (isDateSelected) {
      callDateStatusFilterApi(onSuccess: () {}, onFail: () {}, status: value);
    } else if (storeSearchController.text.isNotEmpty) {
      callStatusStoreFilterApi(onSuccess: () {}, onFail: () {}, status: value);
    } else {
      callStatusFilterApi(onSuccess: () {}, onFail: () {}, status: value);
    }
  }

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

  callSOFilterApi(
      {required Function onSuccess, required Function onFail}) async {
    try {
      await salesOrderRepository
          .dateFilterApi({'search': "${searchController.text},so_number"}).then(
              (response) async {
        final res = SalesOrderResponse.fromJson(response.data);
        salesOrderItemsProvider.value = res.salesOrderItem;
      });
    } catch (e) {
      print(e);
    }
  }

  callSODateFilterApi(
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

  callSOStatusFilterApi(
      {required Function onSuccess,
      required Function onFail,
      required String status}) async {
    try {
      await salesOrderRepository.dateFilterApi({
        'status': status,
        'search': "${searchController.text},so_number"
      }).then((response) async {
        final res = SalesOrderResponse.fromJson(response.data);
        salesOrderItemsProvider.value = res.salesOrderItem;
      });
    } catch (e) {
      print(e);
    }
  }

  callSOStoreFilterApi(
      {required Function onSuccess, required Function onFail}) async {
    try {
      await salesOrderRepository.dateFilterApi({
        'search': "${searchController.text},so_number",
        'store_code': storeCode
      }).then((response) async {
        final res = SalesOrderResponse.fromJson(response.data);
        salesOrderItemsProvider.value = res.salesOrderItem;
      });
    } catch (e) {
      print(e);
    }
  }

  callSODateStatusFilterApi(
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

  callSODateStoreFilterApi(
      {required Function onSuccess, required Function onFail}) async {
    try {
      await salesOrderRepository.dateFilterApi({
        'search': "${searchController.text},so_number",
        'store_code': storeCode,
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

  callSOStatusStoreFilterApi(
      {required Function onSuccess,
      required Function onFail,
      required String status}) async {
    try {
      await salesOrderRepository.dateFilterApi({
        'status': status,
        'search': "${searchController.text},so_number",
        'store_code': storeCode
      }).then((response) async {
        final res = SalesOrderResponse.fromJson(response.data);
        salesOrderItemsProvider.value = res.salesOrderItem;
      });
    } catch (e) {
      print(e);
    }
  }

  callSODateStatusStoreFilterApi(
      {required Function onSuccess,
      required Function onFail,
      required String status}) async {
    try {
      await salesOrderRepository.dateFilterApi({
        'status': status,
        'search': "${searchController.text},so_number",
        'store_code': storeCode,
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
