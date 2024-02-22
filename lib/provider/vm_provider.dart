import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:login/provider/repo_provider.dart';
import 'package:login/screens/home/home_view_model.dart';
import 'package:login/screens/home_delivery/home_delivery_view_model.dart';
import 'package:login/screens/sales/sales_order_view_model.dart';
import 'package:login/screens/search_history/search_history_view_model.dart';
import '../screens/login/login_view_model.dart';

final loginVm =
    StateProvider((ref) => LoginViewModel(ref.read(loginRepository)));

final homeVm = StateProvider((ref) => HomeViewModel(ref.read(homeRepository)));

final salesOrderVm =
    StateProvider((ref) => SalesOrderViewModel(ref.read(salesOrderRepository)));

final searchHistoryVm = StateProvider((ref) => SearchHistoryViewModel(
    ref.read(searchHistoryRepository), ref.read(salesOrderRepository)));

final homeDeliveryVm = StateProvider(
    (ref) => HomeDeliveryViewModel(ref.read(homeDeliveryRepository)));
