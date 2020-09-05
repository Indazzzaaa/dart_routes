import 'package:flutter/material.dart';

class TabBarPage extends StatefulWidget {
  @override
  _TabBarPageState createState() => _TabBarPageState();
}

class _TabBarPageState extends State<TabBarPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: 1,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            onTap: (value) => print(value),
            tabs: [
              Tab(icon: Icon(Icons.directions_car)),
              Tab(icon: Icon(Icons.directions_transit)),
              Tab(icon: Icon(Icons.directions_bike)),
            ],
          ),
          title: Text('Tabs Demo'),
          centerTitle: true,
        ),
        body: TabBarView(
          children: [
            Text(
              "Hello Sumant",
              style: Theme.of(context).textTheme.headline1,
            ),
            Icon(Icons.directions_transit),
            Icon(Icons.directions_bike),
          ],
        ),
      ),
    );
  }
}
