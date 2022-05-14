import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);

  // Tab菜单列表
  final List<Widget> _tabs = const [
    Tab(
      text: '首页',
      icon: Icon(Icons.home),
    ),
    Tab(
      text: '添加',
      icon: Icon(Icons.add),
    ),
    Tab(
      text: '搜索',
      icon: Icon(Icons.search),
    ),
  ];

  // Tab页面列表
  final List<Widget> _tabViews = const [
    Icon(
      Icons.home,
      size: 120,
      color: Color.fromARGB(255, 26, 255, 0),
    ),
    Icon(
      Icons.add,
      size: 120,
      color: Color.fromARGB(255, 0, 60, 255),
    ),
    Icon(
      Icons.search,
      size: 120,
      color: Color.fromARGB(255, 162, 0, 255),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _tabs.length,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("TabDemo"),
          leading: const Icon(Icons.menu),
          actions: const [Icon(Icons.settings)],
          elevation: 0.0,
          bottom: TabBar(
            tabs: _tabs,
            labelColor: Colors.orange,
            unselectedLabelColor: Colors.grey,
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorColor: Colors.orange,
            indicatorWeight: 10,
          ),
        ),
        body: TabBarView(
          children: _tabViews,
        ),
        bottomNavigationBar: TabBar(
          tabs: _tabs,
          labelColor: Colors.blue,
          unselectedLabelColor: Colors.grey,
        ),
      ),
    );
  }
}
