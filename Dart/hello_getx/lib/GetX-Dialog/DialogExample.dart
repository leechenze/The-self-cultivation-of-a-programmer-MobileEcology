import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [],
        title: Text('Dialog'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Get.defaultDialog(
                  title: "是否操作",
                  middleText: "请确认是否操作",
                  titleStyle: TextStyle(
                    color: Colors.pink,
                    fontSize: 30,
                  ),
                  textConfirm: "confirm",
                  confirmTextColor: Colors.amber,
                  textCancel: "cancel",
                  cancelTextColor: Colors.blue,
                  onConfirm: () {},
                  onCancel: () {},
                );
              },
              child: Text('显示 Dialog'),
            ),
          ],
        ),
      ),
    );
  }
}
