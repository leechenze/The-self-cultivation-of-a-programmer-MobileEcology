import 'package:flutter/material.dart';
import 'package:hello_getx/GetX-GetWidget/GetWidgetController.dart';
import 'package:get/get.dart';

class Home extends GetWidget<GetWidgetController> {
  @override
  Widget build(BuildContext context) {
    Get.create(() => GetWidgetController());

    return Scaffold(
      appBar: AppBar(
        title: Text("GetX GetWidget"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Obx(
              () => Text(
                "count的值为:  ${controller.count}",
                style: TextStyle(color: Colors.red, fontSize: 30),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                controller.increment();
              },
              child: Text("点我加1"),
            )
          ],
        ),
      ),
    );
  }
}
