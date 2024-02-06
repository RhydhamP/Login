// ignore_for_file: prefer_const_constructors, deprecated_member_use, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:login/screens/home/home_page_drawer.dart';

class SalesOrderPage extends ConsumerStatefulWidget {
  const SalesOrderPage({super.key});

  @override
  ConsumerState<SalesOrderPage> createState() => _SalesOrderPageState();
}

class _SalesOrderPageState extends ConsumerState<SalesOrderPage> {
  String? dropDownValue;
  @override
  Widget build(BuildContext context) {
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
                      hintText: "Search By Product Name",
                      border: OutlineInputBorder(
                          borderSide: BorderSide(),
                          borderRadius: BorderRadius.circular(25))),
                ),
              ),
              DropdownButton(
                hint: Text("$dropDownValue"),
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
                  dropDownValue = value;
                },
              )
            ],
          )
        ]),
      ),
      drawer: MyDrawer(),
    );
  }
}
