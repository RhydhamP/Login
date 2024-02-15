import 'package:flutter/material.dart';
import 'package:login/base_view_model.dart';
import 'package:login/models/add/add_model4.dart';
import 'package:login/models/add/add_product_model.dart';
import 'package:login/models/search/product_search_model.dart';
import 'package:login/repository/home_repository.dart';

class HomeViewModel extends BaseViewModel {
  final HomeRepository homeRepository;

  HomeViewModel(this.homeRepository);

  final TextEditingController searchController = TextEditingController();
  final TextEditingController quantityController = TextEditingController();

  ValueNotifier<List<Product>> productListProvider = ValueNotifier([]);

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
        final res = Search.fromJson(response.data);
        productListProvider.value = res.products;
        // print("Succu $productListProvider");

        onSuccess.call();
      });
    } catch (e) {
      debugPrint(e.toString());
      onFail.call();
    }
  }

  callAddToList(
      {required Function onSuccess,
      required Function onFail,
      required String wsCode,
      required String quantity,
      required String searchKeyword}) async {
    try {
      // print("query $ws_code $quantity $search_keyword");
      await homeRepository.addToList({
        'ws_code': wsCode,
        'quantity': quantity,
        'search_keyword': searchKeyword
      }).then((reponse) async {
        // debugPrint(reponse.data); // it will not work.
        final res = Add.fromJson(reponse.data);
        final searchResult =
            AddModel4(product: res.product, availability: res.availability);
        addToListProvider.value = [...addToListProvider.value, searchResult];
        // print("scuuucccsusussuussu----------${searchResult}");
      });
    } catch (e) {
      debugPrint(e.toString());
    }
  }
}
