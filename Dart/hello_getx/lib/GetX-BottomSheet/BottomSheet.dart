import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [],
        title: Text('BottomSheet'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Get.bottomSheet(
                  Container(
                    child: Wrap(
                      children: [
                        ListTile(
                          leading: Icon(Icons.wb_sunny_outlined),
                          title: Text('light'),
                          onTap: () {
                            Get.changeTheme(ThemeData.light());
                          },
                        ),
                        ListTile(
                          leading: Icon(Icons.wb_sunny),
                          title: Text('dark'),
                          onTap: () {
                            Get.changeTheme(ThemeData.dark());
                          },
                        ),
                      ],
                    ),
                  ),
                  enableDrag: true,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                    side: BorderSide(
                      color: Colors.red,
                      style: BorderStyle.solid,
                      width: 2.0,
                    ),
                  ),
                  enterBottomSheetDuration: Duration(milliseconds: 3000),
                  exitBottomSheetDuration: Duration(milliseconds: 3000),
                );
              },
              child: Text('BottomSheet'),
            ),
          ],
        ),
      ),
    );
  }
}
