import 'package:flutter/material.dart';
import 'package:login/base_view_model.dart';
import 'package:login/models/sales/sales_model.dart';
import 'package:login/repository/salesOrder_repository.dart';
import 'package:login/utils/date_formatter.dart';

class SalesOrderViewModel extends BaseViewModel {
  final SalesOrderRepository salesOrderRepository;

  SalesOrderViewModel(this.salesOrderRepository);

  ValueNotifier<DateTimeRange?> dateProvider = ValueNotifier(null);

  ValueNotifier<List<SalesOrderItem>> salesOrderItemsProvider = ValueNotifier([]);

  callDateFilterApi(
      {required Function onSuccess, required Function onFail}) async {
    try {
      await salesOrderRepository.dateFilterApi({
        'from_date': dateProvider.value?.start.toFormate(),
        'to_date': dateProvider.value?.end.toFormate()
      }).then((response) async {
        // print("Api filer==========================${[response.data['sales_orders_items']]}");
        final res = SalesOrderResponse.fromJson(response.data);
        salesOrderItemsProvider.value = res.salesOrdersItems;
        print(salesOrderItemsProvider.value);
      });
    } catch (e) {
      print(e);
    }
  }
}
