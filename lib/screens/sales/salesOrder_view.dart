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
  String? dropDownValue2;

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
                      provider.callDateFilterApi(
                          onSuccess: () {}, onFail: () {});
                    },
                    child: Icon(Icons.date_range_outlined)),
                DropdownButton(
                  padding: EdgeInsets.only(left: 70),
                  hint: Text("Status "),
                  value: dropDownValue2,
                  items: [
                    DropdownMenuItem(
                      value: "Accepted",
                      child: Text("Accepted"),
                    ),
                    DropdownMenuItem(
                      value: "Fulfilled",
                      child: Text("Fulfilled"),
                    ),
                    DropdownMenuItem(
                      value: "Cancelled",
                      child: Text("Cancelled"),
                    ),
                    DropdownMenuItem(
                      value: "Partially Fulfilled",
                      child: Text("Partially Fulfilled"),
                    ),
                    DropdownMenuItem(
                      value: "UnAvailable",
                      child: Text("UnAvailable"),
                    )
                  ],
                  onChanged: (value) {
                    dropDownValue2 = value;
                    setState(() {});
                  },
                )
              ],
            ),
          ),
          ValueListenableBuilder(
            valueListenable: provider.salesOrderItemsProvider,
            builder: (context, salesOrderItemsProvider, child) {
              return SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: DataTable(
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
                      final index = entry.key;
                      final result = entry.value;
                      return DataRow(cells: [
                        DataCell(Text(result.product_name)),
                        DataCell(Text(result.store_name)),
                        DataCell(Text(result.so_number)),
                        DataCell(Text(result.so_date)),
                        DataCell(Text(result.doc_number)),
                        DataCell(Text(result.ordered_quantity.toString())),
                        DataCell(Text(result.fulfilled_quantity.toString())),
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
