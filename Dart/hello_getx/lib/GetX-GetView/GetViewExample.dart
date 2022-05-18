import 'package:flutter/material.dart';
import 'package:hello_getx/GetX-GetView/GetViewController.dart';
import 'package:get/get.dart';

class Home extends GetView<GetViewController> {
  @override
  Widget build(BuildContext context) {
    Get.put(GetViewController());

    return Scaffold(
      appBar: AppBar(
        title: Text("GetX GetView"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Obx(
              () => Text(
                // 此处的 controller 是getView封装的, 无需声明;
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
