import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_getx/GetX-Controller-UniqueID/MyController-UniqueID.dart';

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
            GetBuilder<MyController>(
              builder: (controller) {
                return Text(
                  "计数器值为: ${myController.count}",
                  style: TextStyle(color: Colors.green, fontSize: 30),
                );
              },
            ),
            GetBuilder<MyController>(
              id: 'jimi_count',
              builder: (controller) {
                return Text(
                  "计数器值为: ${myController.count}",
                  style: TextStyle(color: Colors.blue, fontSize: 30),
                );
              },
            ),
            ElevatedButton(
              onPressed: () {
                return myController.increment();
              },
              child: Text('click add'),
            )
          ],
        ),
      ),
    );
  }
}
