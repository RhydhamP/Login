// ignore_for_file: prefer_const_constructors, deprecated_member_use, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:login/provider/vm_provider.dart';
import 'package:login/utils/drawer_page.dart';
import 'package:login/screens/sales/sales_delegate.dart';
import '../../enum/sale_filter_enum.dart';
import '../../enum/sales_search_type_enum.dart';

class SalesOrderPage extends ConsumerStatefulWidget {
  const SalesOrderPage({super.key});

  @override
  ConsumerState<SalesOrderPage> createState() => _SalesOrderPageState();
}

class _SalesOrderPageState extends ConsumerState<SalesOrderPage> {
  @override
  Widget build(BuildContext context) {
    final provider = ref.watch(salesOrderVm);

    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        title: Text(
          "Sales Order",
          textScaler: TextScaler.linear(1.15),
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.deepPurple,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(children: [
          SizedBox(
            height: 12,
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Row(
              children: [
                SizedBox(
                  width: 4,
                ),
                Expanded(
                    child: ValueListenableBuilder(
                  valueListenable: provider.selectedSearchType,
                  builder: (context, searchType, child) {
                    return TextFormField(
                      onTap: () async {
                        if (searchType == SalesSearchTypeEnum.product) {
                          await showSearch(
                              context: context,
                              delegate: SalesProductSearchDelegate(
                                  provider: provider, ref: ref));
                        }
                      },
                      onChanged: (value) {
                        provider.callFilterApi();

                        // if (value.isEmpty) {
                        //   provider.productListProvider.value = [];
                        //   return;
                        // }
                        // if (provider.dropDownValue1 == "Product") {
                        //   provider.callProductSearchApi(
                        //       onSuccess: () {}, onFail: () {}, query: value);
                        // } else

                        // if (provider.selectedSearchType.value ==
                        //     SalesSearchTypeEnum.so) {
                        //   if (provider.isDateSelected &&
                        //       provider.storeSearchController.text.isNotEmpty) {
                        //     provider.callSODateStoreFilterApi(
                        //         onSuccess: () {}, onFail: () {});
                        //   } else if (provider.isDateSelected) {
                        //     provider.callSODateFilterApi(
                        //         onSuccess: () {}, onFail: () {});
                        //   } else if (provider
                        //       .storeSearchController.text.isNotEmpty) {
                        //     provider.callSOStoreFilterApi(
                        //         onSuccess: () {}, onFail: () {});
                        //   } else {
                        //     provider.callSOFilterApi(value);
                        //   }
                        // }
                      },
                      controller: provider.searchController,
                      decoration: InputDecoration(
                          hintText: searchType == SalesSearchTypeEnum.product
                              ? "Search By Product Name"
                              : "Search By SO Number",
                          border: OutlineInputBorder(
                              borderSide: BorderSide(),
                              borderRadius: BorderRadius.circular(40))),
                    );
                  },
                )),
                SizedBox(
                  width: 15,
                ),
                ValueListenableBuilder(
                  valueListenable: provider.selectedSearchType,
                  builder: (context, value, child) {
                    return Container(
                      decoration: BoxDecoration(
                          border: Border.all(),
                          borderRadius: BorderRadius.circular(10)),
                      child: DropdownButton<SalesSearchTypeEnum>(
                        borderRadius: BorderRadius.circular(15),
                        underline: SizedBox(),
                        value: value,
                        items: provider.searchTypeList
                            .map(
                              (status) => DropdownMenuItem(
                                alignment: AlignmentDirectional.center,
                                value: status.searchTypeEnum,
                                child: Text(status.label),
                              ),
                            )
                            .toList(),
                        onChanged: (value) {
                          provider.selectedSearchType.value = value;
                          provider.searchController.clear();
                        },
                      ),
                    );
                  },
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
          //               provider.productWsCode = value[index].ws_code;
          //               provider.productListProvider.value = [];

          //               if (provider.isDateSelected &&
          //                   provider.storeSearchController.text.isNotEmpty) {
          //                 provider.callProductDateStoreFilterApi(
          //                     onSuccess: () {}, onFail: () {});
          //               } else if (provider.isDateSelected) {
          //                 provider.callProductDateFilterApi(
          //                     onSuccess: () {}, onFail: () {});
          //               } else if (provider
          //                   .storeSearchController.text.isNotEmpty) {
          //                 provider.callProductStoreFilterApi(
          //                     onSuccess: () {}, onFail: () {});
          //               } else {
          //                 provider.callProductFilterApi(
          //                     onSuccess: () {}, onFail: () {});
          //               }
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
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              children: [
                SizedBox(
                  width: 10,
                ),
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
                ValueListenableBuilder(
                  valueListenable: provider.dateProvider,
                  builder: (context, value, child) {
                    return Row(
                      children: [
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                side: BorderSide(style: BorderStyle.solid)),
                            onPressed: () async {
                              final pickedDate = await showDateRangePicker(
                                  context: context,
                                  initialDateRange: DateTimeRange(
                                      start: DateTime.now()
                                          .subtract(Duration(days: 1)),
                                      end: DateTime.now()),
                                  firstDate: DateTime(2022),
                                  lastDate: DateTime.now());
                              // print(pickedDate?.start);
                              // print(pickedDate?.end);
                              provider.dateProvider.value = pickedDate;

                              // provider.isDateSelected = true;
                              provider.callFilterApi();
                            },
                            child: Icon(
                              Icons.date_range_outlined,
                              size: 32,
                            )),
                        provider.dateProvider.value != null
                            ? InkWell(
                                borderRadius: BorderRadius.circular(20),
                                onTap: () {
                                  provider.clearDateFilter();
                                },
                                child: Icon(
                                  Icons.clear,
                                ))
                            : Container(),
                      ],
                    );
                  },
                ),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: ValueListenableBuilder(
                    valueListenable: provider.selectedStatus,
                    builder: (context, status, child) {
                      return Container(
                        decoration: BoxDecoration(
                            border: Border.all(),
                            borderRadius: BorderRadius.circular(12)),
                        child: DropdownButton<SaleStatusFilterEnum>(
                          borderRadius: BorderRadius.circular(15),
                          elevation: 7,
                          underline: SizedBox(),
                          value: status,
                          isExpanded: true,
                          hint: Text("Status ",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold)),
                          items: provider.statusFilterList
                              .map(
                                (status) => DropdownMenuItem(
                                  alignment: AlignmentDirectional.center,
                                  value: status.statusEnum,
                                  child: Text(status.label),
                                ),
                              )
                              .toList(),
                          onChanged: (status) {
                            provider.selectedStatus.value = status;
                            provider.callFilterApi();
                          },
                        ),
                      );
                    },
                  ),
                ),

                if (provider.selectedStatus.value != null)
                  InkWell(
                      onTap: () {
                        provider.clearStatusFilter();
                      },
                      child: Icon(Icons.clear))
              ],
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 8, right: 8, top: 4, bottom: 4),
            child: ValueListenableBuilder(
              valueListenable: provider.storeCode,
              builder: (context, value, child) {
                return Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        controller: provider.storeSearchController,
                        onTap: () async {
                          await showSearch(
                              context: context,
                              delegate: SalesStoreSearchDelegate(
                                  provider: provider, ref: ref));
                        },
                        // onChanged: (value) {
                        //   if (value.isEmpty) {
                        //     provider.storeListProvider.value = [];
                        //     provider.storeCode = null;
                        //     return;
                        //   }
                        //   provider.callStoreSearchApi(
                        //       onSuccess: () {}, onFail: () {}, query: value);
                        // },
                        decoration: InputDecoration(
                            hintText: "Store",
                            border: OutlineInputBorder(
                                borderSide: BorderSide(),
                                borderRadius: BorderRadius.circular(40))),
                      ),
                    ),
                    if (value != null)
                      IconButton(
                          onPressed: () {
                            provider.clearStoreFilter();
                          },
                          icon: Icon(Icons.clear))
                  ],
                );
              },
            ),
          ),
          // ValueListenableBuilder(
          //   valueListenable: provider.storeListProvider,
          //   builder: (context, value, child) {
          //     return ListView.builder(
          //         shrinkWrap: true,
          //         physics: const NeverScrollableScrollPhysics(),
          //         itemBuilder: (context, index) {
          //           return ListTile(
          //             onTap: () {
          //               // print("Pressed");
          //               provider.storeSearchController.text =
          //                   value[index].name.toString();
          //               provider.storeCode = value[index].storeCode;
          //               provider.storeListProvider.value = [];
          //               if (provider.dropDownValue1 == "Product" &&
          //                   provider.searchController.text.isNotEmpty) {
          //                 if (provider.isDateSelected) {
          //                   provider.callProductDateStoreFilterApi(
          //                       onSuccess: () {}, onFail: () {});
          //                 } else {
          //                   provider.callProductStoreFilterApi(
          //                       onSuccess: () {}, onFail: () {});
          //                 }
          //               } else if (provider.dropDownValue1 == "SO" &&
          //                   provider.searchController.text.isNotEmpty) {
          //                 if (provider.isDateSelected) {
          //                   provider.callSODateStoreFilterApi(
          //                       onSuccess: () {}, onFail: () {});
          //                 } else {
          //                   provider.callSOStoreFilterApi(
          //                       onSuccess: () {}, onFail: () {});
          //                 }
          //               } else if (provider.isDateSelected) {
          //                 provider.callDateStoreFilterApi(
          //                     onSuccess: () {}, onFail: () {});
          //               } else {
          //                 provider.callStoreFilterApi(
          //                     onSuccess: () {}, onFail: () {});
          //               }
          //             },
          //             title: Text(
          //               value[index].name.toString(),
          //               style: TextStyle(fontSize: 17),
          //             ),
          //           );
          //         },
          //         itemCount: value.length);
          //   },
          // ),

          OutlinedButton(
              onPressed: () {
                provider.clearAllFilter();
              },
              child: Text(
                "Clear Filter",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              )),
          ValueListenableBuilder(
            valueListenable: provider.salesOrderItemsProvider,
            builder: (context, salesOrderItemsProvider, child) {
              return SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: DataTable(
                    // border: TableBorder.symmetric(outside: BorderSide(), inside: BorderSide()),
                    columns: <DataColumn>[
                      DataColumn(
                          label: Text(
                        "Product Name",
                        style: TextStyle(fontSize: 16),
                      )),
                      DataColumn(
                          label: Text(
                        "Store Name",
                        style: TextStyle(fontSize: 16),
                      )),
                      DataColumn(
                          label: Text(
                        "SO No.",
                        style: TextStyle(fontSize: 16),
                      )),
                      DataColumn(
                          label: Text(
                        "SO Date",
                        style: TextStyle(fontSize: 16),
                      )),
                      DataColumn(
                          label: Text(
                        "Doc No.",
                        style: TextStyle(fontSize: 16),
                      )),
                      DataColumn(
                          label: Text(
                        "Ordered Qty",
                        style: TextStyle(fontSize: 16),
                      )),
                      DataColumn(
                          label: Text(
                        "Fulfilled Qty",
                        style: TextStyle(fontSize: 16),
                      )),
                      DataColumn(
                          label: Text(
                        "Status",
                        style: TextStyle(fontSize: 16),
                      )),
                      DataColumn(
                          label: Text(
                        "Remarks",
                        style: TextStyle(fontSize: 16),
                      )),
                    ],
                    rows: salesOrderItemsProvider.asMap().entries.map((entry) {
                      // final index = entry.key;
                      final result = entry.value;
                      return DataRow(cells: [
                        DataCell(Text(
                          result.productName,
                          style: TextStyle(fontSize: 14),
                        )),
                        DataCell(Text(
                          result.storeName,
                          style: TextStyle(fontSize: 14),
                        )),
                        DataCell(Text(
                          result.soNumber,
                          style: TextStyle(fontSize: 14),
                        )),
                        DataCell(Text(
                          result.soDate,
                          style: TextStyle(fontSize: 14),
                        )),
                        DataCell(Text(
                          result.docNumber.toString(),
                          style: TextStyle(fontSize: 14),
                        )),
                        DataCell(Text(
                          result.orderedQuantity.toString(),
                          style: TextStyle(fontSize: 14),
                        )),
                        DataCell(Text(
                          result.fulfilledQuantity.toString(),
                          style: TextStyle(fontSize: 14),
                        )),
                        DataCell(Text(
                          result.status,
                          style: TextStyle(fontSize: 14),
                        )),
                        DataCell(Text(
                          result.remark,
                          style: TextStyle(fontSize: 14),
                        )),
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
