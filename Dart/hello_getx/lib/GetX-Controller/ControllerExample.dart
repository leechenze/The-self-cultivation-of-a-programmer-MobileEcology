import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_getx/GetX-Controller/MyController.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  MyController myController = Get.put(MyController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [],
        title: Text('ControllerExample'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // 第一种
            // Obx(
            //   () => Text(
            //     '我的名字是 ${myController.teacher.name}',
            //     style: TextStyle(fontSize: 30, color: Colors.red),
            //   ),
            // ),
            // 第二种
            GetX<MyController>(
              init: MyController(),
              builder: (controller) {
                return Text(
                  // '我的名字是 ${myController.teacher.name}',
                  '我的名字是 ${myController.teacher.value.name}',
                  style: TextStyle(fontSize: 30, color: Colors.red),
                );
              },
            ),
            // 第三种
            // GetBuilder<MyController>(
            //   init: myController,
            //   builder: (controller) {
            //     return Text(
            //       '我的名字是 ${myController.teacher.name.value}',
            //       style: TextStyle(fontSize: 30, color: Colors.red),
            //     );
            //   },
            // ),
            ElevatedButton(
              onPressed: () {
                // myController.convertToUpperCase();
                Get.find<MyController>().convertToUpperCase();
              },
              child: Text('trans to UpperCase'),
            ),
            ElevatedButton(
              onPressed: () {
                // myController.convertToLowerCase();
                Get.find<MyController>().convertToLowerCase();
              },
              child: Text('trans to LowerCase'),
            ),
          ],
        ),
      ),
    );
  }
}
