import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:login/provider/vm_provider.dart';
import 'package:login/screens/home/home_delegate.dart';
import 'package:login/components/drawer_page.dart';

// class HomePage extends StatefulWidget {
//   const HomePage({super.key});

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// final productListProvider = StateProvider<List<ProductModel>>((ref) => []);

// final addProductProvider = StateProvider<List<AddModel4>>((ref) => []);

// ignore: must_be_immutable
class HomePage extends ConsumerWidget {
  // final dio = Dio();

  // List<ProductModel> productList = [];

  // List<AddModel4> addProduct = [];

  // bool isFillSearch = false;
  // int? fillSearchWSCode;

  // addToList(var value, WidgetRef ref) async {
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

  // checkAvail(
  //     BuildContext context, HomeViewModel provider, WidgetRef ref) async {
  // provider.callCheckAvailability(onSuccess: () {}, onFail: () {});
  // print("Check Availability");
  // var response = await dio.get(
  //     "https://ecom.mkart.dev/api/v1/product/check-available?q=${value}");

  // print('response ${jsonEncode(response.data)}');
  // if (response.statusCode == 200) {
  // print('product list ${productList}');

  // var data = SearchModel.fromJson(response.data);
  // productList = data.products;
  // ref.read(productListProvider.notifier).state = data.products;

  // print(productSuggestions);

  // setState(() {});
  // }
  // }

  // TextEditingController searchController = TextEditingController();
  // TextEditingController quantityController = TextEditingController();

  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provider = ref.watch(homeVm);

    // final productSuggestions = provider.productListProvider;

    // print("lst $productSuggestions");
    // final addProductNew = ref.watch(addProductProvider);

    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          "Welcome",
          textScaler: TextScaler.linear(1.15),
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 25,
            ),
            const Text("Check Medicine Availability",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 27)),
            const SizedBox(
              height: 25,
            ),
            Container(
              decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(35)),
              padding:
                  const EdgeInsets.only(left: 12, right: 12, top: 8, bottom: 8),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      style: const TextStyle(fontSize: 18),
                      controller: provider.searchController,
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        hintText: "Search",
                      ),
                      onTap: () async {
                        await showSearch(
                            context: context,
                            delegate: ProductSearchDelegate(
                                provider: provider, ref: ref));
                      },
                      // onChanged: (value) {
                      //   if (value.isEmpty) {
                      //     provider.productListProvider.value = [];
                      //     return;
                      //   }
                      //   provider.callCheckAvailability(
                      //       onSuccess: () {}, onFail: () {}, keyWord: value);
                      // },
                    ),
                  ),
                  InkWell(
                    onTap: () => provider.searchController.clear(),
                    child: const Icon(Icons.clear),
                  )
                ],
              ),
            ),
            // ValueListenableBuilder(
            //   valueListenable: provider.productListProvider,
            //   builder: (context, value, child) {
            //     return ListView.builder(
            //         shrinkWrap: true,
            //         physics: const NeverScrollableScrollPhysics(),
            //         itemBuilder: (context, index) {
            //           return ListTile(
            //             onTap: () {
            //               provider.searchController.text = value[index].name;
            //               provider.fillSearchWSCode = value[index].ws_code;
            //               provider.productListProvider.value = [];
            //             },
            //             title: Text(
            //               value[index].name.toString(),
            //               style: TextStyle(fontSize: 17),
            //             ),
            //             subtitle: Text(
            //               "WS_Code : ${value[index].ws_code.toString()}",
            //               style: TextStyle(fontSize: 14),
            //             ),
            //             trailing: Text(
            //               "M.R.P :-  ${value[index].ws_code.toString()}",
            //               style: TextStyle(fontSize: 13),
            //             ),
            //           );
            //         },
            //         itemCount: value.length);
            //   },
            // ),
            const SizedBox(
              height: 25,
            ),
            Container(
              decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(35)),
              padding:
                  const EdgeInsets.only(left: 12, right: 12, top: 8, bottom: 8),
              child: Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      style: const TextStyle(fontSize: 18),
                      controller: provider.quantityController,
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        hintText: "Quantity",
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () => provider.quantityController.clear(),
                    child: const Icon(Icons.clear),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Material(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(side: const BorderSide()),
                onPressed: () {
                  // print("Rhydham");
                  // addToList(ref, fillSearchWSCode, quantity, searchController);
                  provider.callAddToList(
                      onSuccess: () {},
                      onFail: () {},
                      wsCode: provider.fillSearchWSCode.toString(),
                      quantity: provider.quantityController.text,
                      searchKeyword: provider.searchController.text);

                  // print("API sccuess");
                  provider.searchController.clear();
                  provider.quantityController.clear();
                },
                child: const Text(
                  "Search",
                  style: TextStyle(fontSize: 22),
                ),
              ),
            ),
            // addProductBasics.length?
            // ListView.builder(
            //     shrinkWrap: true,
            //     physics: const NeverScrollableScrollPhysics(),
            //     itemBuilder: (context, index) {
            //       return ListTile(
            //         title: Text("${addProductBasics[index].name.toString()}"),
            //         subtitle: Text(
            //             "Quantity : ${addProductAvailability[index].wsQuantity.toString()}"),
            //         trailing: Text(
            //           "M.R.P :- ${addProductBasics[index].mrp.toString()}",
            //           style: TextStyle(fontSize: 15),
            //         ),
            //       );
            //     },
            //     itemCount: addProductBasics.length),
            ValueListenableBuilder(
                valueListenable: provider.addToListProvider,
                builder: (context, addToListProvider, child) {
                  return addToListProvider.isNotEmpty
                      ? SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: DataTable(
                              columns: const <DataColumn>[
                                DataColumn(
                                    label: Text(
                                  "Medicine Name",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                )),
                                DataColumn(
                                    label: Text(
                                  "MRP",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                )),
                                DataColumn(
                                    label: Text(
                                  "Quantity",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                )),
                                DataColumn(
                                    label: Text(
                                  "Available",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                )),
                                DataColumn(
                                    label: Text(
                                  "TAT",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                )),
                                DataColumn(
                                    label: Text(
                                  "Delete",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                )),
                              ],
                              rows: addToListProvider
                                  .asMap()
                                  .entries
                                  .map((entry) {
                                final index = entry.key;
                                final result = entry.value;
                                return DataRow(cells: [
                                  DataCell(Text(
                                    result.product.name,
                                    style: const TextStyle(fontSize: 15),
                                  )),
                                  DataCell(Text(
                                    result.product.mrp.toString(),
                                    style: const TextStyle(fontSize: 15),
                                  )),
                                  DataCell(Text(
                                    result.availability.wsQuantity.toString(),
                                    style: const TextStyle(fontSize: 15),
                                  )),
                                  DataCell(Text(
                                    result.availability.wsRes == true
                                        ? "Available"
                                        : "Not Available",
                                    style: const TextStyle(fontSize: 15),
                                  )),
                                  DataCell(Text(
                                    result.availability.wsRes == false
                                        ? "Contact 9999999999"
                                        : "Available at Warehouse",
                                    style: const TextStyle(fontSize: 15),
                                  )),
                                  DataCell(ElevatedButton(
                                    child: const Icon(
                                      Icons.delete_outline,
                                    ),
                                    onPressed: () {
                                      provider.addToListProvider.value = [
                                        ...addToListProvider
                                      ]..removeAt(index);
                                      // ref.read(addProductProvider.notifier).state = [
                                      //   ...ref.read(addProductProvider.notifier).state
                                      // ]..removeAt(index);
                                      // addProductNew.removeWhere((element) =>
                                      //     element.Product.id ==
                                      //     result.Product.id);
                                      // setState(() {});
                                    },
                                  ))
                                ]);
                              }).toList()),
                        )
                      : Container();
                }),

            const SizedBox(
              height: 20,
            ),
            ValueListenableBuilder(
              valueListenable: provider.addToListProvider,
              builder: (context, addToListProvider, child) {
                return addToListProvider.isNotEmpty
                    ? ElevatedButton(
                        style:
                            ElevatedButton.styleFrom(side: const BorderSide()),
                        onPressed: () {
                          provider.addToListProvider.value = [];
                          // ref.read(addProductProvider.notifier).state = [];
                          // print("Cancel");
                          // setState(() {});
                        },
                        child: const Text("Clear All",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16)),
                      )
                    : Container();
              },
            )
          ],
        ),
      ),
      drawer: const MyDrawer(),
    );
  }
}
