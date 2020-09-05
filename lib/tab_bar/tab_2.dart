import 'package:flutter/material.dart';

class TabBarPage2 extends StatefulWidget {
  @override
  _TabBarPage2State createState() => _TabBarPage2State();
}

class _TabBarPage2State extends State<TabBarPage2>
    with TickerProviderStateMixin {
  TabController _controller;
  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottom: TabBar(
          onTap: (value) => print(value),
          tabs: [
            Tab(icon: Icon(Icons.directions_car)),
            Tab(icon: Icon(Icons.directions_transit)),
            Tab(icon: Icon(Icons.directions_bike)),
          ],
          controller: _controller, //!This is important part
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
        controller: _controller, //!This is important to use
      ),
    );
  }
}
