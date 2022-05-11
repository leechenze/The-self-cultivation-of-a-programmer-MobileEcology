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
        title: const Text("GridViewDemo"),
        leading: const Icon(Icons.menu),
        actions: const [Icon(Icons.settings)],
        elevation: 0.0,
      ),
      // body: GridViewDemo(),
      // body: GridViewDemoCountMode(),
      // body: GridViewDemoExtentMode(),
      body: GridViewDemoBuildMode(),
    );
  }
}

class GridViewDemo extends StatelessWidget {
  const GridViewDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      padding: EdgeInsets.all(10),
      child: GridView(
        /* 指定固定列数 */
        // gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        //   // 指定列数
        //   crossAxisCount: 2,
        //   // 主轴方向间距
        //   mainAxisSpacing: 10,
        //   // 交叉轴方向间距
        //   crossAxisSpacing: 10,
        //   // 指定宽高比例, 表示宽是高的1.5倍;
        //   childAspectRatio: 1.5,
        // ),
        /* 指定子组件宽度, 列数自适应 */
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          // 指定具体宽度,高度自适应;
          maxCrossAxisExtent: 260,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
        ),
        children: [
          Container(color: Colors.amber),
          Container(color: Colors.blue),
          Container(color: Colors.grey),
          Container(color: Colors.purple),
          Container(color: Colors.orange),
          Container(color: Colors.red),
          Container(color: Colors.cyan),
          Container(color: Colors.indigo),
        ],
      ),
    );
  }
}

class GridViewDemoCountMode extends StatelessWidget {
  const GridViewDemoCountMode({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.count(
        crossAxisCount: 2,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        padding: EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 10,
        ),
        childAspectRatio: 1.5,
        children: List<Widget>.generate(
          10,
          (index) => Image.asset(
            'assets/Images/course/WechatIMG102.png',
            fit: BoxFit.fill,
            repeat: ImageRepeat.noRepeat,
            colorBlendMode: BlendMode.multiply,
            color: Colors.green,
          ),
        ),
      ),
    );
  }
}

class GridViewDemoExtentMode extends StatelessWidget {
  const GridViewDemoExtentMode({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.extent(
        maxCrossAxisExtent: 200,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        padding: EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 10,
        ),
        childAspectRatio: 1.5,
        children: List<Widget>.generate(
          10,
          (index) => Image.asset(
            'assets/Images/course/WechatIMG102.png',
            fit: BoxFit.fill,
            repeat: ImageRepeat.noRepeat,
            colorBlendMode: BlendMode.multiply,
            color: Colors.green,
          ),
        ),
      ),
    );
  }
}

class GridViewDemoBuildMode extends StatelessWidget {
  const GridViewDemoBuildMode({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Widget> _tiles = [
      Container(color: Colors.amber),
      Container(color: Colors.blue),
      Container(color: Colors.grey),
      Container(color: Colors.purple),
      Container(color: Colors.orange),
      Container(color: Colors.red),
      Container(color: Colors.cyan),
      Container(color: Colors.indigo),
    ];
    return Container(
      child: GridView.builder(
        padding: const EdgeInsets.all(10),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
        ),
        itemCount: _tiles.length,
        itemBuilder: (content, index) {
          return _tiles[index];
        },
        physics: BouncingScrollPhysics(),
        // 安卓效果
        // physics: ClampingScrollPhysics(),
        // 总是滚动
        // physics: AlwaysScrollableScrollPhysics(),
        // 禁止滚动
        // physics: NeverScrollableScrollPhysics(),
      ),
    );
  }
}
