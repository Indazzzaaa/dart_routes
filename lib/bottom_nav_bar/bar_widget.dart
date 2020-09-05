import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class CustomBottomNav extends StatelessWidget {
  final Function onTapFunction;
  final int selectedIndex;
  const CustomBottomNav({this.onTapFunction, this.selectedIndex});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: <BottomNavigationBarItem>[
        giveMeBottomNavBar(icon: Icons.home, title: "Home"),
        giveMeBottomNavBar(icon: Icons.hot_tub, title: "Tub"),
        giveMeBottomNavBar(icon: Icons.desktop_windows, title: "Desktop"),
      ],
      currentIndex: selectedIndex,
      selectedItemColor: Colors.deepOrangeAccent.shade400,
      onTap: onTapFunction,
      selectedFontSize: 30,
      selectedIconTheme: IconThemeData(size: 32),
      backgroundColor: Colors.blueGrey.shade100,
      unselectedIconTheme: IconThemeData(color: Colors.green.shade700),
    );
  }
}

BottomNavigationBarItem giveMeBottomNavBar({IconData icon, String title}) {
  return BottomNavigationBarItem(icon: Icon(icon), title: Text(title));
}
