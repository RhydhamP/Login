import 'package:flutter/material.dart';
import 'package:login/base_view_model.dart';
import 'package:login/models/home_delivery/home_delivery_model.dart';
import 'package:login/repository/home_delivery_repository.dart';
import 'package:login/utils/date_formatter.dart';

import '../../enum/home_delivery/order_status_type_enum.dart';
import '../../enum/home_delivery/payment_status_enum.dart';
import '../../enum/home_delivery/search_type_enum.dart';
import '../../models/home_delivery/order_status_model.dart';
import '../../models/home_delivery/payment_status_model.dart';
import '../../models/home_delivery/search_type_model.dart';
import '../../models/store/store_model.dart';

class HomeDeliveryViewModel extends BaseViewModel {
  final HomeDeliveryReppository homeDeliveryReppository;

  HomeDeliveryViewModel(this.homeDeliveryReppository);

  TextEditingController searchController = TextEditingController();

  List<HomeDeliverySearchTypeModel> searchTypeList = [
    HomeDeliverySearchTypeModel(
        searchTypeEnum: HomeDeliverySearchTypeEnum.customerName,
        label: "Customer Name"),
    HomeDeliverySearchTypeModel(
        searchTypeEnum: HomeDeliverySearchTypeEnum.orderNumber,
        label: "Order Number")
  ];
  ValueNotifier<HomeDeliverySearchTypeEnum?> selectedSearchType =
      ValueNotifier(HomeDeliverySearchTypeEnum.customerName);

  ValueNotifier<DateTimeRange?> dateProvider = ValueNotifier(null);

  List<HomeDeliveryOrderStatusModel> orderStatusFilterList = [
    HomeDeliveryOrderStatusModel(
        label: 'Out For Delivery',
        orderStatusEnum: HomeDeliveryOrderStatusEnum.ofd),
    HomeDeliveryOrderStatusModel(
        label: 'RTO', orderStatusEnum: HomeDeliveryOrderStatusEnum.rto),
    HomeDeliveryOrderStatusModel(
        label: 'Picked Up', orderStatusEnum: HomeDeliveryOrderStatusEnum.pick),
    HomeDeliveryOrderStatusModel(
        label: 'Delivered',
        orderStatusEnum: HomeDeliveryOrderStatusEnum.delivered),
    HomeDeliveryOrderStatusModel(
        label: 'Cancelled By Shipper',
        orderStatusEnum: HomeDeliveryOrderStatusEnum.cancelled),
    HomeDeliveryOrderStatusModel(
        label: 'Received',
        orderStatusEnum: HomeDeliveryOrderStatusEnum.received),
  ];
  ValueNotifier<HomeDeliveryOrderStatusEnum?> selectedOrderStatus =
      ValueNotifier(null);

  List<HomeDeliveryPaymentStatusModel> paymentStatusFilterList = [
    HomeDeliveryPaymentStatusModel(
        label: 'Paid', paymentStatusEnum: HomeDeliveryPaymentStatusEnum.paid),
    HomeDeliveryPaymentStatusModel(
        label: 'Pending',
        paymentStatusEnum: HomeDeliveryPaymentStatusEnum.pending),
  ];
  ValueNotifier<HomeDeliveryPaymentStatusEnum?> selectedPaymentStatus =
      ValueNotifier(null);

  TextEditingController storeSearchController = TextEditingController();
  ValueNotifier<List<Store>> storeListProvider = ValueNotifier([]);
  ValueNotifier<int?> storeId = ValueNotifier(null);

  ValueNotifier<List<Order>> homeDeliveryListProvider = ValueNotifier([]);

  callStoreSearchApi({required String query}) async {
    try {
      await homeDeliveryReppository
          .storeSearchApi({'q': query}).then((response) async {
        final res = StoreResponse.fromJson(response.data);
        storeListProvider.value = res.data;
      });
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  String searchType() {
    if (selectedSearchType.value.toString() ==
        "HomeDeliverySearchTypeEnum.customerName") {
      return "${searchController.text},to_name";
    } else {
      return "${searchController.text},order_number";
    }
  }

  callStoreOrderApi() async {
    var requestBody = {
      'store_id': (storeId.value ?? '').toString(),
      'from_date': dateProvider.value?.start.toFormate() ?? '',
      'to_date': dateProvider.value?.end.toFormate() ?? '',
      'payment_status': selectedPaymentStatus.value?.value ?? '',
      "status": selectedOrderStatus.value?.value ?? '',
      "order_type": "B2C",
      "search": searchController.text.isNotEmpty ? searchType() : ''
    };

    requestBody.removeWhere((key, value) => value.toString().isEmpty);

    try {
      await homeDeliveryReppository
          .storeOrderApi(requestBody)
          .then((response) async {
        final res = HomeDeliveryResponse.fromJson(response.data);
        homeDeliveryListProvider.value = res.orders;
      });
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  clearDateFilter() {
    dateProvider.value = null;
    callStoreOrderApi();
    return;
  }

  clearOrderStatusFilter() {
    selectedOrderStatus.value = null;
    callStoreOrderApi();
    return;
  }

  clearPaymentStatusFilter() {
    selectedPaymentStatus.value = null;
    callStoreOrderApi();
    return;
  }

  clearStoreFilter() {
    storeId.value = null;
    storeSearchController.clear();
    callStoreOrderApi();
    return;
  }
}
