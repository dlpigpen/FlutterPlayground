import 'package:flutter/material.dart';

class TabBarExample extends StatefulWidget {
  final String title;

  TabBarExample({Key key, this.title}) : super(key: key);

  @override
  _TabBarExampleState createState() => _TabBarExampleState();
}

class _TabBarExampleState extends State<TabBarExample>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    _tabController = new TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
        bottom: TabBar(
          tabs: [
            Tab(
              text: "Tab 1",
            ),
            Tab(
              text: "Tab 2",
            ),
            Tab(
              text: "Tab 3",
            ),
          ],
          controller: _tabController,
        ),
      ),
      body: TabBarView(
        children: <Widget>[
          Container(
            color: Colors.orangeAccent,
          ),
          Container(
            color: Colors.redAccent,
          ),
          Container(
            color: Colors.blueAccent,
          ),
        ],
        controller: _tabController,
      ),
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
}
