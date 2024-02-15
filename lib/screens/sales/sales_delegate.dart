import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:login/screens/sales/sales_order_view_model.dart';
import 'package:login/utils/routes.dart';

class SalesProductSearchDelegate extends SearchDelegate {
  final SalesOrderViewModel provider;
  final WidgetRef ref;

  SalesProductSearchDelegate({required this.provider, required this.ref});

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
          onPressed: () {
            query = '';
          },
          icon: const Icon(Icons.clear))
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
        onPressed: () {
          Navigator.pushNamed(context, MyRoutes.salesOrderRoute);
        },
        icon: const Icon(Icons.arrow_back));
  }

  @override
  Widget buildResults(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: provider.productListProvider,
      builder: (context, value, child) {
        return ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return ListTile(
                onTap: () {
                  provider.searchController.text = value[index].name;
                  provider.productWsCode = value[index].wsCode;
                  provider.productListProvider.value = [];

                  provider.callFilterApi();

                  // if (provider.isDateSelected &&
                  //     provider.storeSearchController.text.isNotEmpty) {
                  //   provider.callProductDateStoreFilterApi(
                  //       onSuccess: () {}, onFail: () {});
                  // } else if (provider.isDateSelected) {
                  //   provider.callProductDateFilterApi(
                  //       onSuccess: () {}, onFail: () {});
                  // } else if (provider.storeSearchController.text.isNotEmpty) {
                  //   provider.callProductStoreFilterApi(
                  //       onSuccess: () {}, onFail: () {});
                  // } else {
                  //   provider.callProductFilterApi(
                  //       onSuccess: () {}, onFail: () {});
                  // }

                  Navigator.pushNamedAndRemoveUntil(
                      context, MyRoutes.salesOrderRoute, (route) => false);
                },
                title: Text(
                  value[index].name.toString(),
                  style: const TextStyle(fontSize: 17),
                ),
                subtitle: Text(
                  "WS_Code : ${value[index].wsCode.toString()}",
                  style: const TextStyle(fontSize: 14),
                ),
                trailing: Text(
                  "M.R.P :-  ${value[index].wsCode.toString()}",
                  style: const TextStyle(fontSize: 13),
                ),
              );
            },
            itemCount: value.length);
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    if (query.isEmpty) {
      provider.productListProvider.value = [];
    } else {
      provider.callProductSearchApi(
          onSuccess: () {}, onFail: () {}, query: query);
    }
    return buildResults(context);
  }
}

class SalesStoreSearchDelegate extends SearchDelegate {
  final SalesOrderViewModel provider;
  final WidgetRef ref;

  SalesStoreSearchDelegate({required this.provider, required this.ref});

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
          onPressed: () {
            query = '';
          },
          icon: const Icon(Icons.clear))
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
        onPressed: () {
          Navigator.pushNamed(context, MyRoutes.salesOrderRoute);
        },
        icon: const Icon(Icons.arrow_back));
  }

  @override
  Widget buildResults(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: provider.storeListProvider,
      builder: (context, value, child) {
        return ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return ListTile(
                onTap: () {
                  // print("Pressed");
                  provider.storeSearchController.text =
                      value[index].name.toString();

                  provider.storeCode.value = value[index].storeCode;

                  provider.storeListProvider.value = [];

                  provider.callFilterApi();
                  // if (provider.selectedSearchType.value == SalesSearchTypeEnum.product &&
                  //     provider.searchController.text.isNotEmpty) {
                  //   if (provider.isDateSelected) {
                  //     provider.callProductDateStoreFilterApi(
                  //         onSuccess: () {}, onFail: () {});
                  //   } else {
                  //     provider.callProductStoreFilterApi(
                  //         onSuccess: () {}, onFail: () {});
                  //   }
                  // } else if (provider.selectedSearchType.value == SalesSearchTypeEnum.so &&
                  //     provider.searchController.text.isNotEmpty) {
                  //   if (provider.isDateSelected) {
                  //     provider.callSODateStoreFilterApi(
                  //         onSuccess: () {}, onFail: () {});
                  //   } else {
                  //     provider.callSOStoreFilterApi(
                  //         onSuccess: () {}, onFail: () {});
                  //   }
                  // } else if (provider.isDateSelected) {
                  //   provider.callDateStoreFilterApi(
                  //       onSuccess: () {}, onFail: () {});
                  // } else {
                  //   provider.callStoreFilterApi(
                  //       onSuccess: () {}, onFail: () {});
                  // }
                  Navigator.pushNamedAndRemoveUntil(
                      context, MyRoutes.salesOrderRoute, (route) => false);
                },
                title: Text(
                  value[index].name.toString(),
                  style: const TextStyle(fontSize: 17),
                ),
              );
            },
            itemCount: value.length);
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    if (query.isEmpty) {
      provider.storeListProvider.value = [];
    } else {
      provider.callStoreSearchApi(
          onSuccess: () {}, onFail: () {}, query: query);
    }
    return buildResults(context);
  }
}
