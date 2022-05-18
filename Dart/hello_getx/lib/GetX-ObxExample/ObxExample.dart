import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _Home();
}

class _Home extends State<Home> {
  // 三种定义方式;
  // RxInt count = RxInt(0);
  // Rx<double> count = Rx<double>(0);
  var count = 0.obs;
  void _increase() {
    count++;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(
        actions: [],
        title: Text('ObxExample'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Obx(
              () => Text(
                'Count value is ${count.toInt()}',
                style: const TextStyle(color: Colors.red, fontSize: 30),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () {
                _increase();
              },
              child: const Text(
                'click to increase',
              ),
            ),
            Text(
              Get.arguments ?? "",
            ),
          ],
        ),
      ),
    );
  }
}
