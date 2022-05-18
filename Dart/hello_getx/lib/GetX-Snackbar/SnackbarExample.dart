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
        title: Text('Snackbar'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Get.snackbar(
                  'Title', "message",
                  colorText: Colors.pink,
                  duration: Duration(milliseconds: 5000),
                  // snackbar 位置
                  snackPosition: SnackPosition.BOTTOM,
                  titleText: Text('titleText'),
                  messageText: Text('messageText'),
                  icon: Icon(
                    Icons.ac_unit,
                    size: 50,
                    color: Colors.red,
                  ),
                  // 图标闪烁
                  shouldIconPulse: true,
                  // maxWidth: 150,
                  // margin: EdgeInsets.all(0),
                  // padding: EdgeInsets.all(0),
                  borderWidth: 5,
                  borderRadius: 50,
                  borderColor: Colors.amber,
                  mainButton: TextButton(
                    onPressed: () {
                      print('confirm');
                    },
                    child: Text('confirm'),
                  ),
                  onTap: (val) {
                    print('onTap');
                  },
                  snackbarStatus: (status) {
                    print(status);
                  },
                  dismissDirection: DismissDirection.horizontal,
                  overlayBlur: 100,
                  userInputForm: Form(
                    child: Row(
                      children: [
                        Expanded(
                          child: TextField(),
                        ),
                      ],
                    ),
                  ),
                );
              },
              child: Text('显示 Snackbar'),
            ),
          ],
        ),
      ),
    );
  }
}
