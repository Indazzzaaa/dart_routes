import 'package:expense_book/drawer/drawer_main.dart';
import 'package:expense_book/tab_bar/main_tab.dart';
import 'package:expense_book/tab_bar/tab_2.dart';
import 'package:flutter/material.dart';

import 'bottom_nav_bar/btm_bar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.teal,
        scaffoldBackgroundColor: Colors.teal,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: TabBarPage2(),
    );
  }
}
