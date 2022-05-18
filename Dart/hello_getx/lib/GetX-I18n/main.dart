import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'GetX-Snackbar/SnackbarExample.dart';
// import 'GetX-Dialog/DialogExample.dart';
// import 'GetX-BottomSheet/BottomSheet.dart';
// import 'GetX-Navigation/Home.dart';
// import 'GetX-ObxExample/ObxExample.dart';
// import 'GetX-Controller/ControllerExample.dart';
// import 'GetX-Controller-Watch/Controller-Watch.dart';
// import 'GetX-Controller-LifeCycle/Controller-LifeCycle.dart';
// import 'GetX-Controller-UniqueID/Controller-UniqueID.dart';
import 'package:hello_getx/GetX-I18n/I18nExample.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      /* 国际化配置 */
      // 配置语言集合;
      translations: Languages(),
      // 设置默认语言;
      locale: Locale('zh', 'CN'),
      // 配置错误的情况下使用的语言;
      fallbackLocale: Locale('zh', 'CN'),
      home: Home(),
      showSemanticsDebugger: false,
    );
  }
}
