import 'dart:ffi';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

// 将Home 组件抽离出来;
class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("ListViewDemo"),
        leading: const Icon(Icons.menu),
        actions: const [Icon(Icons.settings)],
        elevation: 0.0,
      ),
      body: ListViewDemo(),
    );
  }
}

class ListViewDemo extends StatelessWidget {
  const ListViewDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [],
    );
  }
}
