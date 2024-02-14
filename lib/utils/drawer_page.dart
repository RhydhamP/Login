// ignore_for_file: prefer_const_constructors, deprecated_member_use, use_build_context_synchronously

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login/local_store/local_database.dart';
import 'package:login/utils/routes.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.deepPurple,
        margin: EdgeInsets.zero,
        padding: EdgeInsets.zero,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                accountName: Text(
                  "Medkart",
                  textScaleFactor: 1.24,
                ),
                accountEmail: Text(
                  "medkart.in",
                  textScaleFactor: 1.1,
                ),
                currentAccountPicture: Padding(
                  padding: const EdgeInsets.only(bottom: 6),
                  child: CircleAvatar(
                    child: Text(
                      "M",
                      style: TextStyle(fontSize: 30.0, color: Colors.green),
                    ),
                  ),
                ),
              ),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.home, color: Colors.white),
              title: Text(
                "DashBoard",
                style: TextStyle(color: Colors.white),
                textScaler: TextScaler.linear(1.2),
              ),
              onTap: () => Navigator.pushNamed(context, MyRoutes.homeRoute),
            ),
            ListTile(
              leading: Icon(Icons.next_plan_outlined, color: Colors.white),
              title: Text(
                "SalesOrder",
                style: TextStyle(color: Colors.white),
                textScaler: TextScaler.linear(1.2),
              ),
              onTap: () =>
                  Navigator.pushNamed(context, MyRoutes.salesOrderRoute),
            ),
            ListTile(
              leading: Icon(Icons.history, color: Colors.white),
              title: Text(
                "Search History",
                style: TextStyle(color: Colors.white),
                textScaler: TextScaler.linear(1.25),
              ),
              onTap: () =>
                  Navigator.pushNamed(context, MyRoutes.searchHistoryRoute),
            ),
            ListTile(
              leading: Icon(Icons.logout_outlined, color: Colors.white),
              title: Text(
                "LogOut",
                style: TextStyle(color: Colors.white),
                textScaler: TextScaler.linear(1.2),
              ),
              onTap: () async {
                // final SharedPreferences prefs =
                //     await SharedPreferences.getInstance();

                // await prefs.setString(authTokenKey, "");
                // LocalDatabase loData;
                LocalDatabase().setAuthToken("");
                Navigator.pushNamed(context, MyRoutes.loginRoute);
              },
            ),
          ],
        ),
      ),
    );
  }
}
