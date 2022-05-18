import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_getx/GetX-Controller-Watch/MyController-Watch.dart';

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
            Obx(
              () => Text(
                'count的值为 ${myController.count.toInt()}',
                style: TextStyle(fontSize: 30, color: Colors.red),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                myController.increment();
              },
              child: Text('click add'),
            ),
          ],
        ),
      ),
    );
  }
}
