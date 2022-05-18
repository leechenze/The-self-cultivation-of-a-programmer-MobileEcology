import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_getx/GetX-I18n/MyI18nExample.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  LanguagesController languagesController = Get.put(LanguagesController());

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
            Text(
              'hello'.tr,
              style: TextStyle(fontSize: 30, color: Colors.red),
            ),
            ElevatedButton(
              onPressed: () {
                return languagesController.changeLanguage('zh', 'CN');
              },
              child: Text("设置中文"),
            ),
            ElevatedButton(
              onPressed: () {
                return languagesController.changeLanguage('en', 'US');
              },
              child: Text("设置英文"),
            )
          ],
        ),
      ),
    );
  }
}

class Languages extends Translations {
  @override
  // TODO: implement keys
  Map<String, Map<String, String>> get keys => {
        'zh_CN': {'hello': "你好 世界"},
        'en_US': {'hello': 'hello world'}
      };
}
