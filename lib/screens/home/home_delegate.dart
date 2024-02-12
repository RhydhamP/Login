// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:login/screens/home/home_view_model.dart';
import 'package:login/utils/routes.dart';

class ProductSearchDelegate extends SearchDelegate {
  final HomeViewModel provider;
  final WidgetRef ref;

  ProductSearchDelegate({required this.provider, required this.ref});

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
          Navigator.pushNamed(context, MyRoutes.homeRoute);
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
                  provider.searchController.text = value[index].name;
                  provider.fillSearchWSCode = value[index].ws_code;
                  provider.productListProvider.value = [];
                  Navigator.pushNamedAndRemoveUntil(
                      context, MyRoutes.homeRoute, (route) => false);
                },
                title: Text(
                  value[index].name.toString(),
                  style: TextStyle(fontSize: 17),
                ),
                subtitle: Text(
                  "WS_Code : ${value[index].ws_code.toString()}",
                  style: TextStyle(fontSize: 14),
                ),
                trailing: Text(
                  "M.R.P :-  ${value[index].ws_code.toString()}",
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
      provider.callCheckAvailability(
          onSuccess: () {}, onFail: () {}, keyWord: query);
    }
    return buildResults(context);
  }
}
