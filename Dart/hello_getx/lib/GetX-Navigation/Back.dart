import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_getx/GetX-Navigation/Navigation.dart';

class BackPages extends StatefulWidget {
  const BackPages({Key? key}) : super(key: key);

  @override
  State<BackPages> createState() => _BackPagesState();
}

class _BackPagesState extends State<BackPages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(
        actions: [],
        title: Text('BackPages'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Get.back(
                  result: "Data of BackPagesPage",
                  closeOverlays: true,
                  canPop: true,
                );
              },
              child: Text('Back Button'),
            ),
          ],
        ),
      ),
    );
  }
}
