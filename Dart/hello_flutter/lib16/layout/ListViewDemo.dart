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
    return SingleChildScrollView(
      child: Column(
        children: [
          ListViewBasic(),
          ListViewHorizontal(),
          ListViewBuilder(),
          ListViewSeparated(),
        ],
      ),
    );
  }
}

class ListViewSeparated extends StatelessWidget {
  ListViewSeparated({Key? key}) : super(key: key);

  Widget dividerOdd = const Divider(
    color: Colors.blue,
    // 分割线的宽度
    thickness: 3,
  );
  Widget dividerEven = const Divider(
    color: Colors.red,
    // 分割线的宽度
    thickness: 3,
  );

  final List<Widget> products = List.generate(
    20,
    (ind) => ListTile(
      leading: Image.asset('assets/Images/course/WechatIMG96.png'),
      title: Text('access_alarm$ind'),
      subtitle: Text('sub_access_alarm$ind'),
      trailing: const Icon(Icons.keyboard_arrow_right),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const ListTile(
          title: Text('商品列表'),
        ),
        Container(
          height: 200,
          child: ListView.separated(
            itemCount: products.length,
            itemBuilder: (context, index) {
              return products[index];
            },
            // 分割器的构造器
            // 如果是奇数返回红色分割线, 偶数返回蓝色分割线
            separatorBuilder: (context, index) {
              return index % 2 == 0 ? dividerOdd : dividerEven;
            },
          ),
        )
      ],
    );
  }
}

class ListViewBuilder extends StatelessWidget {
  ListViewBuilder({Key? key}) : super(key: key);

  final List<Widget> users = List<Widget>.generate(
    20,
    (ind) => OutlinedButton(
      onPressed: () {},
      child: Text('Widget$ind'),
      style: ButtonStyle(
        padding: MaterialStateProperty.all(
          EdgeInsets.all(10),
        ),
      ),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      child: ListView.builder(
        padding: EdgeInsets.all(10),
        itemCount: users.length,
        // itemExtent: 30,
        itemBuilder: (context, index) {
          return users[index];
        },
      ),
    );
  }
}

class ListViewHorizontal extends StatelessWidget {
  const ListViewHorizontal({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      margin: EdgeInsets.all(10),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Container(
            width: 160,
            height: 100,
            color: Color.fromARGB(255, 255, 191, 0),
          ),
          Container(
            width: 160,
            color: Color.fromARGB(255, 255, 0, 0),
          ),
          Container(
            width: 160,
            color: Color.fromARGB(255, 68, 255, 0),
          ),
          Container(
            width: 160,
            color: Color.fromARGB(255, 0, 255, 234),
          ),
          Container(
            width: 160,
            color: Color.fromARGB(255, 7, 28, 255),
          ),
        ],
      ),
    );
  }
}

class ListViewBasic extends StatelessWidget {
  const ListViewBasic({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: ListView(
        scrollDirection: Axis.vertical,
        children: const [
          ListTile(
            leading: Icon(
              Icons.access_alarm,
              size: 30,
            ),
            title: Text('access_alarm'),
            subtitle: Text('sub_access_alarm'),
            trailing: Icon(Icons.keyboard_arrow_right),
          ),
          ListTile(
            leading: Icon(
              Icons.flag_circle_outlined,
              size: 30,
            ),
            title: Text('flag_circle_outlined'),
            subtitle: Text('sub_flag_circle_outlined'),
            trailing: Icon(Icons.keyboard_arrow_right),
          ),
          ListTile(
            leading: Icon(
              Icons.wallet_giftcard,
              size: 30,
            ),
            title: Text('wallet_giftcard'),
            subtitle: Text('sub_wallet_giftcard'),
            trailing: Icon(Icons.keyboard_arrow_right),
          ),
          ListTile(
            leading: Icon(
              Icons.table_view_rounded,
              size: 30,
            ),
            title: Text('table_view_rounded'),
            subtitle: Text('sub_table_view_rounded'),
            trailing: Icon(Icons.keyboard_arrow_right),
          ),
          ListTile(
            leading: Icon(
              Icons.yard_rounded,
              size: 30,
            ),
            title: Text('yard_rounded'),
            subtitle: Text('sub_yard_rounded'),
            trailing: Icon(Icons.keyboard_arrow_right),
            selected: true,
            selectedTileColor: Color.fromARGB(255, 0, 250, 200),
            selectedColor: Colors.amber,
          ),
        ],
      ),
    );
  }
}
