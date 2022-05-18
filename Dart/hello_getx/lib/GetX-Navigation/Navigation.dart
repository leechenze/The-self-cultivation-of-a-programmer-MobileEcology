import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'Home.dart';

class NavigationExample extends StatefulWidget {
  const NavigationExample({Key? key}) : super(key: key);

  @override
  State<NavigationExample> createState() => _NavigationExampleState();
}

class _NavigationExampleState extends State<NavigationExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(
        actions: [],
        title: Text('Navigation'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Get.to(
                  () => Home(),
                  fullscreenDialog: true,
                  transition: Transition.topLevel,
                  duration: Duration(milliseconds: 1000),
                  curve: Curves.easeIn,
                  arguments: "Hello Home",
                );
              },
              child: Text('To Home'),
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
