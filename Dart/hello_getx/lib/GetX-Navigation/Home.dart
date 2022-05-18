import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_getx/GetX-Navigation/Navigation.dart';
import 'package:hello_getx/GetX-Navigation/Back.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(
        actions: [],
        title: Text('Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () async {
                Get.to(
                  () => NavigationExample(),
                  fullscreenDialog: true,
                  transition: Transition.topLevel,
                  duration: Duration(milliseconds: 1000),
                  curve: Curves.easeIn,
                  arguments: "Hello Navigation",
                );
              },
              child: Text('To Navigation'),
            ),
            ElevatedButton(
              onPressed: () async {
                // 接收 BackPages 页面中传递过来的数据
                final backArgData = await Get.to(
                  () => BackPages(),
                  fullscreenDialog: true,
                  transition: Transition.topLevel,
                  duration: Duration(milliseconds: 1000),
                  curve: Curves.easeIn,
                );
                print(backArgData);
              },
              child: Text('To Back'),
            ),
          ],
        ),
      ),
    );
  }
}
