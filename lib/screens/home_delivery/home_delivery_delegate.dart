import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:login/screens/home_delivery/home_delivery_view_model.dart';

import '../../utils/routes.dart';

class HomeDeliveryStoreSearchDelegate extends SearchDelegate {
  final HomeDeliveryViewModel provider;
  final WidgetRef ref;

  HomeDeliveryStoreSearchDelegate({required this.provider, required this.ref});

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
          Navigator.pushNamed(context, MyRoutes.homeDeliveryRoute);
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

                  provider.storeId.value = value[index].id;

                  provider.storeListProvider.value = [];
                  provider.callStoreOrderApi();

                  Navigator.pushNamedAndRemoveUntil(
                      context, MyRoutes.homeDeliveryRoute, (route) => false);
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
      provider.callStoreSearchApi(query: query);
    }
    return buildResults(context);
  }
}
