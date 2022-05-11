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
        title: const Text("SingleChildScrollViewDemo"),
        leading: const Icon(Icons.menu),
        actions: const [Icon(Icons.settings)],
        elevation: 0.0,
      ),
      body: SingleChildScrollViewDemo(),
    );
  }
}

class SingleChildScrollViewDemo extends StatelessWidget {
  const SingleChildScrollViewDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // 验证水平滚动
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.all(10),
          reverse: true,
          child: Row(
            children: [
              OutlinedButton(
                onPressed: () {},
                child: Text('Outlined One'),
                style: ButtonStyle(
                  padding: MaterialStateProperty.all(EdgeInsets.all(10)),
                ),
              ),
              OutlinedButton(
                onPressed: () {},
                child: Text('Outlined Second'),
                style: ButtonStyle(
                  padding: MaterialStateProperty.all(EdgeInsets.all(10)),
                ),
              ),
              OutlinedButton(
                onPressed: () {},
                child: Text('Outlined Third'),
                style: ButtonStyle(
                  padding: MaterialStateProperty.all(EdgeInsets.all(10)),
                ),
              ),
              OutlinedButton(
                onPressed: () {},
                child: Text('Outlined Fourth'),
                style: ButtonStyle(
                  padding: MaterialStateProperty.all(EdgeInsets.all(10)),
                ),
              ),
              OutlinedButton(
                onPressed: () {},
                child: Text('Outlined Fifth'),
                style: ButtonStyle(
                  padding: MaterialStateProperty.all(EdgeInsets.all(10)),
                ),
              ),
            ],
          ),
        ),
        // 验证垂直滚动
        SingleChildScrollView(
          scrollDirection: Axis.vertical,
          reverse: true,
          // Android 下拉微光效果
          // physics: ClampingScrollPhysics(),
          // IOS 下拉弹性效果
          physics: BouncingScrollPhysics(),
          child: Column(
            children: List.generate(
              100,
              (ind) => OutlinedButton(
                onPressed: () {},
                child: Text('按钮$ind'),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
