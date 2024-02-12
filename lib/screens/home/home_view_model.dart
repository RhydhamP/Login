import 'package:flutter/material.dart';
import 'package:login/base_view_model.dart';
import 'package:login/models/add/add_model.dart';
import 'package:login/models/add/add_model4.dart';
import 'package:login/models/search/product_model.dart';
import 'package:login/models/search/search_model.dart';
import 'package:login/repository/home_repository.dart';

class HomeViewModel extends BaseViewModel {
  final HomeRepository homeRepository;

  HomeViewModel(this.homeRepository);

  final TextEditingController searchController = TextEditingController();
  final TextEditingController quantityController = TextEditingController();

  ValueNotifier<List<ProductModel>> productListProvider = ValueNotifier([]);

  ValueNotifier<List<AddModel4>> addToListProvider = ValueNotifier([]);

  int? fillSearchWSCode;

  callCheckAvailability(
      {required Function onSuccess,
      required Function onFail,
      required String keyWord}) async {
    try {
      await homeRepository
          .checkAvailability({'q': keyWord}).then((response) async {
        // print(response.data);
        final res = SearchModel.fromJson(response.data);
        productListProvider.value = res.products;
        // print("Succu $productListProvider");

        onSuccess.call();
      });
    } catch (e) {
      print(e);
      onFail.call();
    }
  }

  callAddToList(
      {required Function onSuccess,
      required Function onFail,
      required String ws_code,
      required String quantity,
      required String search_keyword}) async {
    try {
      // print("query $ws_code $quantity $search_keyword");
      await homeRepository.addToList({
        'ws_code': ws_code,
        'quantity': quantity,
        'search_keyword': search_keyword
      }).then((reponse) async {
        print(reponse.data);
        final res = AddModel.fromJson(reponse.data);
        final searchResult =
            AddModel4(Product: res.Product, Availability: res.Availability);
        addToListProvider.value = [...addToListProvider.value, searchResult];
      });
    } catch (e) {
      print(e);
    }
  }
}
