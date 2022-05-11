import 'dart:ffi';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'dart:io';

// 将Home 组件抽离出来;
class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("OtherWidgets"),
        leading: const Icon(Icons.menu),
        actions: const [Icon(Icons.settings)],
        elevation: 0.0,
      ),
      body: OtherWidgets(),
    );
  }
}

class OtherWidgets extends StatelessWidget {
  OtherWidgets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget dialogBox = CupertinoDemo();
    // 判断当前平台信息
    if (Platform.isIOS) {
      dialogBox = CupertinoDemo();
    } else if (Platform.isAndroid) {
      dialogBox = MaterialDemo();
    } else {
      dialogBox = Text('只支持Android 和 IOS端');
    }

    return SafeArea(
      child: Wrap(
        alignment: WrapAlignment.center,
        children: [
          // 安卓风格组件
          Text(
            '安卓风格',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          MaterialDemo(),
          // IOS风格组件
          Text(
            'IOS风格',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          CupertinoDemo(),
          // 根据不同系统给定组件
          Text(
            '当前的系统是${Platform.operatingSystem}',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          dialogBox,
        ],
      ),
    );
  }
}

class MaterialDemo extends StatelessWidget {
  const MaterialDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: AlertDialog(
        title: Text('提示'),
        content: Text('确认删除吗'),
        actions: [
          TextButton(
              onPressed: () {
                print('触发 取消按钮');
              },
              child: Text('取消')),
          TextButton(
              onPressed: () {
                print('触发 确认按钮');
              },
              child: Text('确认')),
        ],
      ),
    );
  }
}

class CupertinoDemo extends StatelessWidget {
  const CupertinoDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: CupertinoAlertDialog(
          title: Text('提示'),
          content: Text('确认删除吗'),
          actions: [
            CupertinoDialogAction(
              child: Text('取消'),
              onPressed: () {
                print('触发 取消按钮');
              },
            ),
          ]),
    );
  }
}
