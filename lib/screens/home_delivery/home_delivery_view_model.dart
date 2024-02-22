import 'package:flutter/material.dart';
import 'package:login/base_view_model.dart';
import 'package:login/repository/home_delivery_repository.dart';

import '../../models/store/store_model.dart';

class HomeDeliveryViewModel extends BaseViewModel {
  final HomeDeliveryReppository homeDeliveryReppository;

  HomeDeliveryViewModel(this.homeDeliveryReppository);

  ValueNotifier<List<Store>> storeListProvider = ValueNotifier([]);
  ValueNotifier<int?> storeId = ValueNotifier(null);

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

  callStoreOrderApi() async {
    var requestBody = {
      'store_id': (storeId.value ?? '').toString(),
      // 'from_date': dateProvider.value?.start.toFormate() ?? '',
      // 'to_date': dateProvider.value?.end.toFormate() ?? '',
      'payment_status': "",
      "status": "",
      "order_type": "B2C",
      "search": ""
    };

    requestBody.removeWhere((key, value) => value.toString().isEmpty);

    try {
      await homeDeliveryReppository
          .storeOrderApi(requestBody)
          .then((response) async {});
    } catch (e) {
      debugPrint(e.toString());
    }
  }
}
