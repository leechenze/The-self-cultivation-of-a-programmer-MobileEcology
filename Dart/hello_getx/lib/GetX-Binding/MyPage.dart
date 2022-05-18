import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_getx/GetX-Binding/HomePage.dart';
import 'package:hello_getx/GetX-Binding/Controller/HomeController.dart';
import 'package:hello_getx/GetX-Binding/Controller/MyController.dart';

// TODO Implement this library.
class MyPage extends StatefulWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  State<MyPage> createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
      appBar: AppBar(
        title: Text("MyPage"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Obx(
              () => Text(
                "计数器的值为 ${Get.find<MyController>().count.toInt()}",
                style: TextStyle(color: Colors.blue, fontSize: 30),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  Get.find<MyController>().increment();
                },
                child: Text("点击加1")),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Get.to(() => Home());
              },
              child: Text("跳转去首页"),
            ),
          ],
        ),
      ),
    );
  }
}
