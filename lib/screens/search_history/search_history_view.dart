// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:login/provider/vm_provider.dart';
import 'package:login/screens/search_history/search_history_delegate.dart';
import 'package:login/utils/drawer_page.dart';

class SearchHistoryPage extends ConsumerStatefulWidget {
  const SearchHistoryPage({super.key});

  @override
  ConsumerState<SearchHistoryPage> createState() => _SearchHistoryPageState();
}

class _SearchHistoryPageState extends ConsumerState<SearchHistoryPage> {
  @override
  Widget build(BuildContext context) {
    final provider = ref.watch(searchHistoryVm);

    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          "Search History",
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
            height: 15,
          ),
          Row(
            children: [
              SizedBox(
                width: 8,
              ),
              Expanded(
                child: TextFormField(
                  controller: provider.productSearchController,
                  decoration: InputDecoration(
                      hintText: "Search By...",
                      border: OutlineInputBorder(
                          borderSide: BorderSide(),
                          borderRadius: BorderRadius.circular(25))),
                  onTap: () async {
                    await showSearch(
                        context: context,
                        delegate: SearchHistoryProductSearchDelegate(
                            provider: provider, ref: ref));
                  },
                ),
              ),
              SizedBox(
                width: 10,
              ),
              DropdownButton(
                items: [DropdownMenuItem(child: Text("Product"))],
                onChanged: (value) {},
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              SizedBox(
                width: 8,
              ),
              Expanded(
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
                                  delegate: SearchHistoryStoreSearchDelegate(
                                      provider: provider, ref: ref));
                            },
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
                              icon: Icon(Icons.clear)),
                      ],
                    );
                  },
                ),
              ),
              SizedBox(
                width: 15,
              ),
              SizedBox(
                width: 115,
                child: ValueListenableBuilder(
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
                              provider.callSearchHistoryApi();
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
              )
            ],
          ),
          ValueListenableBuilder(
            valueListenable: provider.searchHistoryListProvider,
            builder: (context, searchHistoryListProvider, child) {
              return SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: DataTable(
                    columns: <DataColumn>[
                      DataColumn(
                          label: Text(
                        "Date",
                        style: TextStyle(fontSize: 16),
                      )),
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
                        "Store Code",
                        style: TextStyle(fontSize: 16),
                      )),
                      DataColumn(
                          label: Text(
                        "Package Type",
                        style: TextStyle(fontSize: 16),
                      )),
                      DataColumn(
                          label: Text(
                        "Package Size",
                        style: TextStyle(fontSize: 16),
                      )),
                      DataColumn(
                          label: Text(
                        "Search Keyword",
                        style: TextStyle(fontSize: 16),
                      )),
                      DataColumn(
                          label: Text(
                        "Available at Vendor",
                        style: TextStyle(fontSize: 16),
                      )),
                      DataColumn(
                          label: Text(
                        "Available at Warehouse",
                        style: TextStyle(fontSize: 16),
                      )),
                      DataColumn(
                          label: Text(
                        "Available Qty",
                        style: TextStyle(fontSize: 16),
                      )),
                      DataColumn(
                          label: Text(
                        "Searched Qty",
                        style: TextStyle(fontSize: 16),
                      )),
                      DataColumn(
                          label: Text(
                        "MRP",
                        style: TextStyle(fontSize: 16),
                      )),
                      DataColumn(
                          label: Text(
                        "TAT",
                        style: TextStyle(fontSize: 16),
                      )),
                    ],
                    rows:
                        searchHistoryListProvider.asMap().entries.map((entry) {
                      final result = entry.value;
                      return DataRow(cells: [
                        DataCell(Text(
                          result.date,
                          style: TextStyle(fontSize: 14),
                        )),
                        DataCell(Text(
                          result.productName,
                          style: TextStyle(fontSize: 14),
                        )),
                        DataCell(Text(
                          result.storeName ?? '',
                          style: TextStyle(fontSize: 14),
                        )),
                        DataCell(Text(
                          result.storeCode ?? '',
                          style: TextStyle(fontSize: 14),
                        )),
                        DataCell(Text(
                          result.packageType,
                          style: TextStyle(fontSize: 14),
                        )),
                        DataCell(Text(
                          result.packageSize.toString(),
                          style: TextStyle(fontSize: 14),
                        )),
                        DataCell(Text(
                          result.searchKeyword,
                          style: TextStyle(fontSize: 14),
                        )),
                        DataCell(Text(
                          result.availableAtVendor,
                          style: TextStyle(fontSize: 14),
                        )),
                        DataCell(Text(
                          result.availableAtWarehouse,
                          style: TextStyle(fontSize: 14),
                        )),
                        DataCell(Text(
                          result.availableQty.toString(),
                          style: TextStyle(fontSize: 14),
                        )),
                        DataCell(Text(
                          result.searchedQty.toString(),
                          style: TextStyle(fontSize: 14),
                        )),
                        DataCell(Text(
                          result.mrp,
                          style: TextStyle(fontSize: 14),
                        )),
                        DataCell(Text(
                          result.tat,
                          style: TextStyle(fontSize: 14),
                        )),
                      ]);
                    }).toList()),
              );
            },
          )
        ]),
      ),
      drawer: const MyDrawer(),
    );
  }
}
