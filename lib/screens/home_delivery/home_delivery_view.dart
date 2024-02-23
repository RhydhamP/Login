// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:login/components/drawer_page.dart';
import 'package:login/provider/vm_provider.dart';
import 'package:login/screens/home_delivery/home_delivery_delegate.dart';

import '../../enum/home_delivery/order_status_type_enum.dart';
import '../../enum/home_delivery/payment_status_enum.dart';
import '../../enum/home_delivery/search_type_enum.dart';

class HomeDeliveryPage extends ConsumerStatefulWidget {
  const HomeDeliveryPage({super.key});

  @override
  ConsumerState<HomeDeliveryPage> createState() => _HomeDeliveryPageState();
}

class _HomeDeliveryPageState extends ConsumerState<HomeDeliveryPage> {
  @override
  Widget build(BuildContext context) {
    final provider = ref.watch(homeDeliveryVm);

    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        title: Text(
          "Home Delivery",
          textScaler: TextScaler.linear(1.12),
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.deepPurple,
        centerTitle: true,
      ),
      drawer: MyDrawer(),
      body: Padding(
        padding: const EdgeInsets.only(left: 10, right: 8),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  ValueListenableBuilder(
                    valueListenable: provider.searchController,
                    builder: (context, value, child) {
                      return Container(
                        padding: EdgeInsets.only(left: 12, right: 6),
                        height: 55,
                        width: 220,
                        decoration: BoxDecoration(
                            border: Border.all(),
                            borderRadius: BorderRadius.circular(20)),
                        child: Row(
                          children: [
                            Expanded(
                              child: TextField(
                                controller: provider.searchController,
                                style: TextStyle(fontSize: 18),
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "Search by...",
                                    hintStyle: TextStyle(fontSize: 18)),
                                onChanged: (value) {
                                  provider.callStoreOrderApi();
                                },
                              ),
                            ),
                            provider.searchController.text.isNotEmpty
                                ? InkWell(
                                    child: Icon(Icons.clear),
                                    onTap: () {
                                      provider.searchController.clear();
                                      provider.callStoreOrderApi();
                                    },
                                  )
                                : SizedBox()
                          ],
                        ),
                      );
                    },
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  Expanded(
                    child: ValueListenableBuilder(
                      valueListenable: provider.selectedSearchType,
                      builder: (context, value, child) {
                        return Container(
                          padding: EdgeInsets.only(left: 8),
                          decoration: BoxDecoration(
                              border: Border.all(),
                              borderRadius: BorderRadius.circular(20)),
                          child: DropdownButton<HomeDeliverySearchTypeEnum>(
                            borderRadius: BorderRadius.circular(15),
                            underline: const SizedBox(),
                            value: value,
                            items: provider.searchTypeList
                                .map(
                                  (status) => DropdownMenuItem(
                                    alignment: AlignmentDirectional.center,
                                    value: status.searchTypeEnum,
                                    child: Text(
                                      status.label,
                                      style: TextStyle(fontSize: 17),
                                    ),
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
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 10,
                  ),
                  ValueListenableBuilder(
                    valueListenable: provider.dateProvider,
                    builder: (context, value, child) {
                      return Row(
                        children: [
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  side: const BorderSide(
                                      style: BorderStyle.solid)),
                              onPressed: () async {
                                final pickedDate = await showDateRangePicker(
                                    context: context,
                                    initialDateRange: DateTimeRange(
                                        start: DateTime.now()
                                            .subtract(const Duration(days: 1)),
                                        end: DateTime.now()),
                                    firstDate: DateTime(2022),
                                    lastDate: DateTime.now());
                                // print(pickedDate?.start);
                                // print(pickedDate?.end);
                                provider.dateProvider.value = pickedDate;
                                provider.callStoreOrderApi();
                              },
                              child: const Icon(
                                Icons.date_range_outlined,
                                size: 32,
                              )),
                          if (provider.dateProvider.value != null)
                            InkWell(
                                borderRadius: BorderRadius.circular(20),
                                onTap: () {
                                  provider.clearDateFilter();
                                },
                                child: const Icon(
                                  Icons.clear,
                                )),
                        ],
                      );
                    },
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: ValueListenableBuilder(
                      valueListenable: provider.selectedOrderStatus,
                      builder: (context, status, child) {
                        return Row(
                          children: [
                            Expanded(
                              child: Container(
                                padding: EdgeInsets.only(left: 12),
                                decoration: BoxDecoration(
                                    border: Border.all(),
                                    borderRadius: BorderRadius.circular(20)),
                                child:
                                    DropdownButton<HomeDeliveryOrderStatusEnum>(
                                  borderRadius: BorderRadius.circular(15),
                                  underline: const SizedBox(),
                                  value: status,
                                  isExpanded: true,
                                  hint: const Text("Status ",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold)),
                                  items: provider.orderStatusFilterList
                                      .map(
                                        (status) => DropdownMenuItem(
                                          alignment:
                                              AlignmentDirectional.center,
                                          value: status.orderStatusEnum,
                                          child: Text(status.label),
                                        ),
                                      )
                                      .toList(),
                                  onChanged: (status) {
                                    provider.selectedOrderStatus.value = status;
                                    provider.callStoreOrderApi();
                                  },
                                ),
                              ),
                            ),
                            if (provider.selectedOrderStatus.value != null)
                              InkWell(
                                  onTap: () {
                                    provider.clearOrderStatusFilter();
                                  },
                                  child: const Icon(Icons.clear))
                          ],
                        );
                      },
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  ValueListenableBuilder(
                    valueListenable: provider.storeSearchController,
                    builder: (context, value, child) {
                      return Container(
                        padding: EdgeInsets.only(left: 12, right: 6),
                        height: 55,
                        width: 220,
                        decoration: BoxDecoration(
                            border: Border.all(),
                            borderRadius: BorderRadius.circular(20)),
                        child: Row(
                          children: [
                            Expanded(
                              child: TextField(
                                onTap: () async {
                                  await showSearch(
                                      context: context,
                                      delegate: HomeDeliveryStoreSearchDelegate(
                                          provider: provider, ref: ref));
                                },
                                controller: provider.storeSearchController,
                                style: TextStyle(fontSize: 18),
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "Search by Store...",
                                    hintStyle: TextStyle(fontSize: 18)),
                              ),
                            ),
                            provider.storeSearchController.text.isNotEmpty
                                ? InkWell(
                                    child: Icon(Icons.clear),
                                    onTap: () {
                                      provider.clearStoreFilter();
                                    },
                                  )
                                : SizedBox()
                          ],
                        ),
                      );
                    },
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  Expanded(
                    child: ValueListenableBuilder(
                      valueListenable: provider.selectedPaymentStatus,
                      builder: (context, status, child) {
                        return Row(
                          children: [
                            Expanded(
                              child: Container(
                                padding: EdgeInsets.only(left: 12),
                                decoration: BoxDecoration(
                                    border: Border.all(),
                                    borderRadius: BorderRadius.circular(20)),
                                child: DropdownButton<
                                    HomeDeliveryPaymentStatusEnum>(
                                  borderRadius: BorderRadius.circular(15),
                                  underline: const SizedBox(),
                                  value: status,
                                  isExpanded: true,
                                  hint: const Text("Payment Status",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold)),
                                  items: provider.paymentStatusFilterList
                                      .map(
                                        (status) => DropdownMenuItem(
                                          alignment:
                                              AlignmentDirectional.center,
                                          value: status.paymentStatusEnum,
                                          child: Text(status.label),
                                        ),
                                      )
                                      .toList(),
                                  onChanged: (status) {
                                    provider.selectedPaymentStatus.value =
                                        status;
                                    provider.callStoreOrderApi();
                                  },
                                ),
                              ),
                            ),
                            if (provider.selectedPaymentStatus.value != null)
                              InkWell(
                                  onTap: () {
                                    provider.clearPaymentStatusFilter();
                                  },
                                  child: const Icon(Icons.clear))
                          ],
                        );
                      },
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              ValueListenableBuilder(
                valueListenable: provider.homeDeliveryListProvider,
                builder: (context, homeDeliveryListProvider, child) {
                  return SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: DataTable(
                        // border: TableBorder.symmetric(outside: BorderSide(), inside: BorderSide()),
                        columns: const <DataColumn>[
                          DataColumn(
                              label: Text(
                            "AWB Number",
                            style: TextStyle(fontSize: 16),
                          )),
                          DataColumn(
                              label: Text(
                            "Order Number",
                            style: TextStyle(fontSize: 16),
                          )),
                          DataColumn(
                              label: Text(
                            "Order Date & Time",
                            style: TextStyle(fontSize: 16),
                          )),
                          DataColumn(
                              label: Text(
                            "Pickup Address",
                            style: TextStyle(fontSize: 16),
                          )),
                          DataColumn(
                              label: Text(
                            "Customer Name",
                            style: TextStyle(fontSize: 16),
                          )),
                          DataColumn(
                              label: Text(
                            "Customer Pincode",
                            style: TextStyle(fontSize: 16),
                          )),
                          DataColumn(
                              label: Text(
                            "Bill Amount (in Rs.)",
                            style: TextStyle(fontSize: 16),
                          )),
                          DataColumn(
                              label: Text(
                            "Order Status",
                            style: TextStyle(fontSize: 16),
                          )),
                          DataColumn(
                              label: Text(
                            "Payment Status",
                            style: TextStyle(fontSize: 16),
                          )),
                          DataColumn(
                              label: Text(
                            "Is Delivery Fees Collected",
                            style: TextStyle(fontSize: 16),
                          )),
                          DataColumn(
                              label: Text(
                            "Pickup Time",
                            style: TextStyle(fontSize: 16),
                          )),
                          DataColumn(
                              label: Text(
                            "Delivered Time",
                            style: TextStyle(fontSize: 16),
                          )),
                        ],
                        rows: homeDeliveryListProvider
                            .asMap()
                            .entries
                            .map((entry) {
                          // final index = entry.key;
                          final result = entry.value;
                          return DataRow(cells: [
                            DataCell(Text(
                              result.awbNumber,
                              style: const TextStyle(fontSize: 14),
                            )),
                            DataCell(Text(
                              result.invoiceNumber,
                              style: const TextStyle(fontSize: 14),
                            )),
                            DataCell(Text(
                              result.orderTime,
                              style: const TextStyle(fontSize: 14),
                            )),
                            DataCell(Text(
                              result.fromName,
                              style: const TextStyle(fontSize: 14),
                            )),
                            DataCell(Text(
                              result.toName,
                              style: const TextStyle(fontSize: 14),
                            )),
                            DataCell(Text(
                              result.toPincode,
                              style: const TextStyle(fontSize: 14),
                            )),
                            DataCell(Text(
                              result.amount.toString(),
                              style: const TextStyle(fontSize: 14),
                            )),
                            DataCell(Text(
                              result.orderStatus,
                              style: const TextStyle(fontSize: 14),
                            )),
                            DataCell(Text(
                              result.paymentStatus,
                              style: const TextStyle(fontSize: 14),
                            )),
                            DataCell(Text(
                              result.isDeliveryChargeCollected.toString(),
                              style: const TextStyle(fontSize: 14),
                            )),
                            DataCell(Text(
                              result.pickupTime.toString(),
                              style: const TextStyle(fontSize: 14),
                            )),
                            DataCell(Text(
                              result.deliveredTime.toString(),
                              style: const TextStyle(fontSize: 14),
                            )),
                          ]);
                        }).toList()),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
