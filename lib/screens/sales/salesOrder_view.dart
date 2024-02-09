// ignore_for_file: prefer_const_constructors, deprecated_member_use, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:login/provider/vm_provider.dart';
import 'package:login/screens/home/home_page_drawer.dart';

class SalesOrderPage extends ConsumerStatefulWidget {
  const SalesOrderPage({super.key});

  @override
  ConsumerState<SalesOrderPage> createState() => _SalesOrderPageState();
}

class _SalesOrderPageState extends ConsumerState<SalesOrderPage> {
  String? dropDownValue1 = "Product";

  @override
  Widget build(BuildContext context) {
    final provider = ref.watch(salesOrderVm);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Sales Order",
          textScaleFactor: 1.15,
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.deepPurple,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(children: [
          SizedBox(
            height: 15,
          ),
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  onChanged: (value) {
                    if (value.isEmpty) {
                      provider.productListProvider.value = [];
                      return;
                    }
                    if (dropDownValue1 == "Product") {
                      provider.callProductSearchApi(
                          onSuccess: () {}, onFail: () {}, query: value);
                    } else if (dropDownValue1 == "SO Number") {
                      print("SO api caled");
                      provider.callDateAndSOFilterApi(
                          onSuccess: () {}, onFail: () {});
                    }
                    setState(() {});
                  },
                  controller: provider.searchController,
                  decoration: InputDecoration(
                      hintText: dropDownValue1 == "Product"
                          ? "Search By Product Name"
                          : "Search By SO Number",
                      border: OutlineInputBorder(
                          borderSide: BorderSide(),
                          borderRadius: BorderRadius.circular(25))),
                ),
              ),
              DropdownButton(
                value: dropDownValue1,
                hint: Text("$dropDownValue1"),
                padding: EdgeInsets.only(left: 15),
                iconSize: 25,
                items: [
                  DropdownMenuItem(
                    value: "Product",
                    child: Text("Product"),
                  ),
                  DropdownMenuItem(
                    value: "SO Number",
                    child: Text("SO Number"),
                  )
                ],
                onChanged: (value) {
                  dropDownValue1 = value;
                  setState(() {});
                },
              )
            ],
          ),
          ValueListenableBuilder(
            valueListenable: provider.productListProvider,
            builder: (context, value, child) {
              return ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return ListTile(
                      onTap: () {
                        // print("Pressed");
                        provider.searchController.text = value[index].name;
                        // searchController.clear();
                        provider.productWsCode = value[index].ws_code;
                        // Quantity = productList[index].
                        // ref.read(productListProvider.notifier).state = [];
                        // setState(() {});
                        provider.productListProvider.value = [];

                        if (provider.isDateSelected) {
                          provider.callProductDateFilterApi(
                              onSuccess: () {}, onFail: () {});
                        } else {
                          provider.callProductFilterApi(
                              onSuccess: () {}, onFail: () {});
                        }

                        // provider.searchController.clear();
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
          ),
          SingleChildScrollView(
            padding: EdgeInsets.all(8),
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                // SfDateRangePicker(
                //   view: DateRangePickerView.month,
                //   selectionMode: DateRangePickerSelectionMode.range,
                //   initialSelectedRange: PickerDateRange(
                //       DateTime.now().subtract(Duration(days: 1)),
                //       DateTime.now()),
                //   onSelectionChanged: (dateRangePickerSelectionChangedArgs) {
                //     // print("Date Changed");
                //   },
                // ),
                ElevatedButton(
                    onPressed: () async {
                      final pickedDate = await showDateRangePicker(
                          context: context,
                          initialDateRange: DateTimeRange(
                              start: DateTime.now().subtract(Duration(days: 1)),
                              end: DateTime.now()),
                          firstDate: DateTime(2022),
                          lastDate: DateTime.now());
                      print(pickedDate?.start);
                      print(pickedDate?.end);
                      provider.dateProvider.value = pickedDate;

                      provider.isDateSelected = true;

                      if (provider.searchController.text.isNotEmpty &&
                          dropDownValue1 == "Product") {
                        if (provider.storeSearchController.text.isNotEmpty) {
                          provider.callProductDateStoreFilterApi(
                              onSuccess: () {}, onFail: () {});
                        } else {
                          provider.callProductDateFilterApi(
                              onSuccess: () {}, onFail: () {});
                        }
                      } else if (provider
                          .storeSearchController.text.isNotEmpty) {
                        provider.callDateStoreFilterApi(
                            onSuccess: () {}, onFail: () {});
                      } else {
                        provider.callDateFilterApi(
                            onSuccess: () {}, onFail: () {});
                      }
                    },
                    child: Icon(Icons.date_range_outlined)),
                DropdownButton(
                  padding: EdgeInsets.only(left: 70),
                  hint: Text("Status "),
                  items: [
                    DropdownMenuItem(
                      value: "ACCEPTED",
                      child: Text("Accepted"),
                    ),
                    DropdownMenuItem(
                      value: "FULFILLED",
                      child: Text("Fulfilled"),
                    ),
                    DropdownMenuItem(
                      value: "CANCELLED",
                      child: Text("Cancelled"),
                    ),
                    DropdownMenuItem(
                      value: "PARTIALLY_FULFILLED",
                      child: Text("Partially Fulfilled"),
                    ),
                    DropdownMenuItem(
                      value: "UNAVAILABLE",
                      child: Text("UnAvailable"),
                    )
                  ],
                  onChanged: (value) {
                    if (provider.searchController.text.isNotEmpty &&
                        dropDownValue1 == "Product") {
                      if (provider.isDateSelected &&
                          provider.storeSearchController.text.isNotEmpty) {
                        provider.callProductDateStatusStoreFilterApi(
                            onSuccess: () {},
                            onFail: () {},
                            status: value.toString());
                      } else if (provider.isDateSelected) {
                        provider.callProductDateStatusFilterApi(
                            onSuccess: () {},
                            onFail: () {},
                            status: value.toString());
                      } else if (provider
                          .storeSearchController.text.isNotEmpty) {
                        provider.callProductStatusStoreFilterApi(
                            onSuccess: () {},
                            onFail: () {},
                            status: value.toString());
                      } else {
                        provider.callProductStatusFilterApi(
                            onSuccess: () {},
                            onFail: () {},
                            status: value.toString());
                      }
                    } else if (provider.searchController.text.isNotEmpty &&
                        dropDownValue1 == "SO Number") {
                      if (provider.isDateSelected) {
                        provider.callDateStatusSOFilterApi(
                            onSuccess: () {},
                            onFail: () {},
                            status: value.toString());
                      }
                    } else if (provider.isDateSelected &&
                        provider.storeSearchController.text.isNotEmpty) {
                      provider.callDateStatusStoreFilterApi(
                          onSuccess: () {},
                          onFail: () {},
                          status: value.toString());
                    } else if (provider.isDateSelected) {
                      provider.callDateStatusFilterApi(
                          onSuccess: () {},
                          onFail: () {},
                          status: value.toString());
                    } else if (provider.storeSearchController.text.isNotEmpty) {
                      provider.callStatusStoreFilterApi(
                          onSuccess: () {},
                          onFail: () {},
                          status: value.toString());
                    } else {
                      provider.callStatusFilterApi(
                          onSuccess: () {},
                          onFail: () {},
                          status: value.toString());
                    }
                    setState(() {});
                  },
                )
              ],
            ),
          ),
          TextFormField(
            controller: provider.storeSearchController,
            onChanged: (value) {
              if (value.isEmpty) {
                provider.storeListProvider.value = [];
                provider.storeCode = null;
                return;
              }
              provider.callStoreSearchApi(
                  onSuccess: () {}, onFail: () {}, query: value);
            },
            decoration: InputDecoration(
                hintText: "Store",
                border: OutlineInputBorder(
                    borderSide: BorderSide(),
                    borderRadius: BorderRadius.circular(40))),
          ),
          ValueListenableBuilder(
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
                        provider.storeCode = value[index].storeCode;
                        provider.storeListProvider.value = [];
                        if (dropDownValue1 == "Product" &&
                            provider.searchController.text.isNotEmpty) {
                          if (provider.isDateSelected) {
                            provider.callProductDateStoreFilterApi(
                                onSuccess: () {}, onFail: () {});
                          } else {
                            provider.callProductStoreFilterApi(
                                onSuccess: () {}, onFail: () {});
                          }
                        } else if (provider.isDateSelected) {
                          provider.callDateStoreFilterApi(
                              onSuccess: () {}, onFail: () {});
                        } else {
                          provider.callStoreFilterApi(
                              onSuccess: () {}, onFail: () {});
                        }
                      },
                      title: Text(
                        value[index].name.toString(),
                        style: TextStyle(fontSize: 17),
                      ),
                    );
                  },
                  itemCount: value.length);
            },
          ),
          ValueListenableBuilder(
            valueListenable: provider.salesOrderItemsProvider,
            builder: (context, salesOrderItemsProvider, child) {
              return SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: DataTable(
                    // border: TableBorder.symmetric(outside: BorderSide(), inside: BorderSide()),
                    columns: <DataColumn>[
                      DataColumn(label: Text("Product Name")),
                      DataColumn(label: Text("Store Name")),
                      DataColumn(label: Text("SO No.")),
                      DataColumn(label: Text("SO Date")),
                      DataColumn(label: Text("Doc No.")),
                      DataColumn(label: Text("Ordered Qty")),
                      DataColumn(label: Text("Fulfilled Qty")),
                      DataColumn(label: Text("Status")),
                      DataColumn(label: Text("Remarks")),
                    ],
                    rows: salesOrderItemsProvider.asMap().entries.map((entry) {
                      // final index = entry.key;
                      final result = entry.value;
                      return DataRow(cells: [
                        DataCell(Text(result.productName)),
                        DataCell(Text(result.storeName)),
                        DataCell(Text(result.soNumber)),
                        DataCell(Text(result.soDate)),
                        DataCell(Text(result.docNumber.toString())),
                        DataCell(Text(result.orderedQuantity.toString())),
                        DataCell(Text(result.fulfilledQuantity.toString())),
                        DataCell(Text(result.status)),
                        DataCell(Text(result.remark)),
                      ]);
                    }).toList()),
              );
            },
          )
        ]),
      ),
      drawer: MyDrawer(),
    );
  }
}
