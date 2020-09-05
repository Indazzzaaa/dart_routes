import 'package:flutter/material.dart';

class MainDrawerPage extends StatefulWidget {
  @override
  _MainDrawerPageState createState() => _MainDrawerPageState();
}

class _MainDrawerPageState extends State<MainDrawerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //!This should me must to see the drawer
        centerTitle: true,
        title: Text(
          "Drawer",
          style: Theme.of(context).textTheme.headline4,
        ),
      ),
      drawer: Drawer(
          elevation: 0,
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(2),
                  color: Colors.blueGrey,
                ),
                child: Text(
                  'Drawer Header',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
              ),
              giveTiles(context, text: "Home", icon: Icons.home),
              giveTiles(context, text: "Dektop Music", icon: Icons.desktop_mac),
              giveTiles(context, text: "Watch Video", icon: Icons.video_label),
              giveTiles(context, text: "Listen Music", icon: Icons.music_video)
            ],
          )),
    );
  }
}

ListTile giveTiles(BuildContext context, {String text, IconData icon}) {
  return ListTile(
    leading: Icon(icon),
    title: Text(
      text,
      style: TextStyle(
          color: Colors.black,
          fontSize: 24,
          fontWeight: Theme.of(context).textTheme.headline2.fontWeight),
    ),
    onTap: () => Navigator.pop(context), //*Close the navigator drawer
  );
}
