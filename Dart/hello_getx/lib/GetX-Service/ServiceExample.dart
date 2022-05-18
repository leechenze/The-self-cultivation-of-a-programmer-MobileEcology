import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_getx/GetX-Service/Service.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Service myService = Service();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [],
        title: Text('Service'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Get.find<Service>().getCounter();
              },
              child: Text("点我加1"),
            )
          ],
        ),
      ),
    );
  }
}
