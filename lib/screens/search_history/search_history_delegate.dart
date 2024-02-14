// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:login/screens/search_history/search_history_view_model.dart';
import 'package:login/utils/routes.dart';

class SearchHistoryProductSearchDelegate extends SearchDelegate {
  final SearchHistoryViewModel provider;
  final WidgetRef ref;

  SearchHistoryProductSearchDelegate(
      {required this.provider, required this.ref});

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
          onPressed: () {
            query = '';
          },
          icon: Icon(Icons.clear))
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
        onPressed: () {
          Navigator.pushNamed(context, MyRoutes.salesOrderRoute);
        },
        icon: Icon(Icons.arrow_back));
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
                  provider.productSearchController.text = value[index].name;
                  provider.productWsCode.value = value[index].wsCode;
                  provider.productListProvider.value = [];

                  provider.callSearchHistoryApi();

                  Navigator.pushNamedAndRemoveUntil(
                      context, MyRoutes.searchHistoryRoute, (route) => false);
                },
                title: Text(
                  value[index].name.toString(),
                  style: TextStyle(fontSize: 17),
                ),
                subtitle: Text(
                  "WS_Code : ${value[index].wsCode.toString()}",
                  style: TextStyle(fontSize: 14),
                ),
                trailing: Text(
                  "M.R.P :-  ${value[index].wsCode.toString()}",
                  style: TextStyle(fontSize: 13),
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

class SearchHistoryStoreSearchDelegate extends SearchDelegate {
  final SearchHistoryViewModel provider;
  final WidgetRef ref;

  SearchHistoryStoreSearchDelegate({required this.provider, required this.ref});

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
          onPressed: () {
            query = '';
          },
          icon: Icon(Icons.clear))
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
        onPressed: () {
          Navigator.pushNamed(context, MyRoutes.searchHistoryRoute);
        },
        icon: Icon(Icons.arrow_back));
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

                  provider.callSearchHistoryApi();

                  Navigator.pushNamedAndRemoveUntil(
                      context, MyRoutes.searchHistoryRoute, (route) => false);
                },
                title: Text(
                  value[index].name.toString(),
                  style: TextStyle(fontSize: 17),
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
