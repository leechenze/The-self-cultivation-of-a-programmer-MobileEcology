import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_getx/GetX-Binding/Controller/HomeController.dart';
import 'package:hello_getx/GetX-Binding/MyPage.dart';

// HomePages
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(
        title: Text("HomePage"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Obx(
              () => Text(
                "计数器的值为 ${Get.find<HomeController>().count.toInt()}",
                style: TextStyle(color: Colors.red, fontSize: 30),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  Get.find<HomeController>().increment();
                },
                child: Text("点击加1")),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Get.to(() => MyPage());
              },
              child: Text("跳转去首页"),
            ),
          ],
        ),
      ),
    );
  }
}
