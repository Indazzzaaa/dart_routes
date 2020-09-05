import 'package:expense_book/bottom_nav_bar/bar_widget.dart';
import 'package:flutter/material.dart';

class BottmoBar extends StatefulWidget {
  @override
  _BottmoBarState createState() => _BottmoBarState();
}

class _BottmoBarState extends State<BottmoBar> {
  int _selectedIndex = 1;

  void _onItemTapped(int val) {
    setState(() {
      _selectedIndex = val;
      print(val);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Bottom Nav Bar",
          style: Theme.of(context).textTheme.subtitle1,
        ),
      ),
      bottomNavigationBar: CustomBottomNav(
        onTapFunction: _onItemTapped,
        selectedIndex: _selectedIndex,
      ),
      body: Container(
        alignment: Alignment.center,
        child: giveMeSomethingToShow(_selectedIndex, context),
      ),
    );
  }
}

Widget giveMeSomethingToShow(int index, BuildContext context) {
  var style = Theme.of(context).textTheme.headline1;
  List<Widget> centerTitle = [
    Text(
      'Home',
      style: style,
    ),
    Text(
      "Home Tub",
      style: style,
    ),
    Text(
      "Desktop",
      style: style,
    ),
  ];

  return centerTitle[index];
}
