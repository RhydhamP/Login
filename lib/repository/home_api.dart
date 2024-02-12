// import 'package:dio/dio.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:login/models/add/add_model.dart';
// import 'package:login/models/add/add_model4.dart';
// import 'package:login/screens/home/home_page.dart';
// import 'package:shared_preferences/shared_preferences.dart';

// final dio = Dio();

// // checkAvail(String value, WidgetRef ref) async {
// //   // print("Check Availability");
// //   var response = await dio
// //       .get("https://ecom.mkart.dev/api/v1/product/check-available?q=${value}");

// //   // print('response ${jsonEncode(response.data)}');
// //   if (response.statusCode == 200) {
// //     // print('product list ${productList}');

// //     var data = SearchModel.fromJson(response.data);
// //     // productList = data.products;
// //     ref.read(productListProvider.notifier).state = data.products;

// //     // print(productListNew);

// //     // setState(() {});
// //   }
// // }

// addToList(WidgetRef ref, int? fillSearchWSCode, TextEditingController quantity,
//     TextEditingController searchController) async {
//   // print("Added to Search");

//   final SharedPreferences prefs = await SharedPreferences.getInstance();

//   final String? token = prefs.getString('token');
//   // print('token ${token}');

//   var url =
//       "https://opsapi-v2.mkart.dev/api/v1/search/medicine-search?ws_code=${fillSearchWSCode}&quantity=${quantity.text}&search_keyword=${searchController.text}";

//   // print('url => $url');

//   var header = {"Authorization": 'Bearer $token'};

//   // print('header => $header');

//   try {
//     var response = await dio.get(url, options: Options(headers: header));
//     // print("Api called");
//     if (response.statusCode == 200) {
//       // print("Searched Successfully");
//       // print("Add Response ${jsonEncode(response.data)}");

//       var data = AddModel.fromJson(response.data);

//       // print("Object created");
//       // print(data.Product);
//       final resultProduct =
//           AddModel4(Product: data.Product, Availability: data.Availability);

//       ref.read(addProductProvider.notifier).state = [
//         ...ref.read(addProductProvider.notifier).state,
//         resultProduct
//       ];

//       searchController.clear();
//       quantity.clear();

//       // setState(() {
//       //   addProduct.add(resultProduct);
//       //   print(addProduct);
//       //   searchController.clear();
//       //   quantity.clear();
//       // });
//     }
//   } catch (e) {
//     print(e);
//   }

//   // setState(() {});
// }
