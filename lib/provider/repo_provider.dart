import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:login/provider/network_provider.dart';
import 'package:login/repository/home_repository.dart';
import 'package:login/repository/login_repository.dart';
import 'package:login/repository/salesOrder_repository.dart';
import 'package:login/repository/searchHistory_repository.dart';

final loginRepository =
    StateProvider((ref) => LoginRepository(dio: ref.watch(dioProvider)));

final homeRepository =
    StateProvider((ref) => HomeRepository(dio: ref.watch(dioProvider)));

final salesOrderRepository =
    StateProvider((ref) => SalesOrderRepository(dio: ref.watch(dioProvider)));

final searchHistoryRepository = StateProvider(
    (ref) => SearchHistoryRepository(dio: ref.watch(dioProvider)));
